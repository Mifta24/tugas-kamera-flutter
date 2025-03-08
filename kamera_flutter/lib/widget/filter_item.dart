import 'package:flutter/material.dart';


@immutable
class FilterItem extends StatelessWidget {
 const FilterItem({
    super.key,
    required this.color,
    this.onFilterSelected,
  });


  final Color color;
  final VoidCallback? onFilterSelected;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: Image.network(
              'https://docs.flutter.dev/cookbook/img-files'
              '/effects/instagram-buttons/millennial-texture.jpg',
              //color: color.withOpacity(0.5),
              color:color.withValues(alpha: 0.5),
              colorBlendMode: BlendMode.hardLight,
            ),
          ),
        ),
      ),
    );
  }
}
