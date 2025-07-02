import 'package:codelab_tj/domain/model/route_model.dart';
import 'package:flutter/material.dart';

class RouteCard extends StatelessWidget {
  const RouteCard({
    required this.route,
    required this.isSelected,
    required this.onChanged,
    super.key,
  });

  final RouteModel route;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    final attr = route.attributes;

    final bgColor = Color(int.parse('0xFF${attr?.color ?? 'CCCCCC'}'));
    final textColor = Color(int.parse('0xFF${attr?.textColor ?? '000000'}'));

    final icon = _getRouteIcon(attr?.fareClass);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: CheckboxListTile.adaptive(
        value: isSelected,
        onChanged: onChanged,
        title: Text(
          attr?.longName ?? 'Unknown Route',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if ((attr?.shortName ?? '').isNotEmpty)
              Text(
                'Short name: ${attr?.shortName}',
                style: TextStyle(color: textColor.withOpacity(0.85)),
              ),
            if ((attr?.description ?? '').isNotEmpty)
              Text(
                'Description: ${attr?.description}',
                style: TextStyle(color: textColor.withOpacity(0.85)),
              ),
            if ((attr?.fareClass ?? '').isNotEmpty)
              Row(
                children: [
                  const Icon(Icons.monetization_on_outlined, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    attr!.fareClass!,
                    style: TextStyle(color: textColor.withOpacity(0.85)),
                  ),
                ],
              ),
          ],
        ),
        tileColor: bgColor.withOpacity(0.1),
        checkColor: bgColor,
        activeColor: textColor,
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        secondary: CircleAvatar(
          radius: 20,
          backgroundColor: bgColor.withOpacity(0.85),
          child: Icon(icon, color: textColor),
        ),
      ),
    );
  }

  IconData _getRouteIcon(String? fareClass) {
    switch (fareClass?.toLowerCase()) {
      case 'rapid transit':
        return Icons.subway;
      case 'commuter rail':
        return Icons.train;
      case 'ferry':
        return Icons.directions_boat;
      case 'bus':
        return Icons.directions_bus;
      default:
        return Icons.directions_transit; // fallback
    }
  }
}
