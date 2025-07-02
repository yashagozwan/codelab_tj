import 'package:codelab_tj/domain/model/trip_model.dart';
import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  const TripCard({
    required this.trip,
    required this.isSelected,
    required this.onChanged,
    super.key,
  });

  final TripModel trip;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    final attributes = trip.attributes;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: CheckboxListTile(
        value: isSelected,
        onChanged: onChanged,
        title: Row(
          children: [
            const Icon(Icons.directions_bus, color: Colors.blue),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                attributes?.headsign ?? 'Unknown Destination',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Trip: ${attributes?.name ?? '-'}'),
            Text('Route ID: ${trip.relationships?.route?.data?.id ?? '-'}'),
            Row(
              children: [
                Icon(
                  attributes?.directionId == 1
                      ? Icons.arrow_forward
                      : Icons.arrow_back,
                  size: 16,
                ),
                const SizedBox(width: 4),
                Text(attributes?.directionId == 1 ? 'Inbound' : 'Outbound'),
                if (attributes?.wheelchairAccessible == 1) ...[
                  const SizedBox(width: 8),
                  const Icon(Icons.accessible, size: 16, color: Colors.green),
                ],
                if (attributes?.bikesAllowed == 1) ...[
                  const SizedBox(width: 8),
                  const Icon(Icons.pedal_bike, size: 16, color: Colors.orange),
                ],
              ],
            ),
          ],
        ),
        controlAffinity: ListTileControlAffinity.leading,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Colors.grey, width: 0.3),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        tileColor: Colors.white,
      ),
    );
  }
}
