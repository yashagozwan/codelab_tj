import 'package:codelab_tj/domain/model/vehicle_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';

class VehicleDetailCard extends StatelessWidget {
  const VehicleDetailCard({required this.vehicle, super.key});
  final VehicleDetailModel vehicle;

  @override
  Widget build(BuildContext context) {
    final attr = vehicle.attributes;
    final rel = vehicle.relationships;

    return Center(
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.all(12),
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title & Status
              Row(
                children: [
                  const Icon(
                    Icons.directions_bus,
                    size: 28,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Vehicle ${attr?.label ?? '-'}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text(attr?.currentStatus ?? 'Unknown'),
                    backgroundColor: _statusColor(attr?.currentStatus),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              Wrap(
                spacing: 10,
                runSpacing: 4,
                children: [
                  InfoTile(title: 'Lat', value: _format(attr?.latitude)),
                  InfoTile(title: 'Lng', value: _format(attr?.longitude)),
                  InfoTile(
                    title: 'Speed',
                    value: _format(attr?.speed, unit: 'km/h'),
                  ),
                  InfoTile(
                    title: 'Updated',
                    value: _formatTime(attr?.updatedAt),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Wrap(
                spacing: 10,
                runSpacing: 4,
                children: [
                  InfoTile(title: 'Route ID', value: rel?.route?.data?.id),
                  InfoTile(title: 'Trip ID', value: rel?.trip?.data?.id),
                ],
              ),

              const SizedBox(height: 12),

              if (attr?.carriages != null && attr!.carriages!.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '🚃 Carriages',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    ...attr.carriages!.map(
                      (c) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(c.label ?? '-'),
                            Text(
                              '${c.occupancyPercentage?.toString() ?? '-'}% • ${c.occupancyStatus ?? '-'}',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              const SizedBox(height: 12),

              if (attr?.latitude != null && attr?.longitude != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    height: 200,
                    child: FlutterMap(
                      options: MapOptions(
                        initialCenter: LatLng(attr!.latitude!, attr.longitude!),
                        initialZoom: 18,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.yashagozwan.codelab_tj',
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: LatLng(attr.latitude!, attr.longitude!),
                              width: 40,
                              height: 40,
                              child: Image.asset('assets/bus.png'),
                            ),
                          ],
                        ),
                        CircleLayer(
                          circles: [
                            CircleMarker(
                              borderColor: Colors.red,
                              borderStrokeWidth: 2,
                              color: Colors.red.withAlpha(20),
                              point: LatLng(attr.latitude!, attr.longitude!),
                              radius: 30,
                              useRadiusInMeter: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  String _format(dynamic value, {String? unit}) {
    if (value == null) return '-';
    if (value is double) {
      return value.toStringAsFixed(2) + (unit != null ? ' $unit' : '');
    }
    return value.toString() + (unit != null ? ' $unit' : '');
  }

  String _formatTime(String? iso) {
    if (iso == null) return '-';
    try {
      final dt = DateTime.parse(iso).toLocal();
      return DateFormat('dd MMM yyyy HH:mm').format(dt);
    } catch (_) {
      return iso;
    }
  }

  Color _statusColor(String? status) {
    switch (status) {
      case 'IN_TRANSIT_TO':
        return Colors.green.shade100;
      case 'STOPPED_AT':
        return Colors.orange.shade100;
      default:
        return Colors.grey.shade300;
    }
  }
}

class InfoTile extends StatelessWidget {
  const InfoTile({required this.title, super.key, this.value});
  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
          ),
          Text(
            value ?? '-',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
