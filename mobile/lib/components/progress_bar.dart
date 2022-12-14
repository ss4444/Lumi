import 'package:flutter/material.dart';
import 'package:mobile/utils/theme/text_styles.dart';
import 'package:mobile/utils/theme/theme.dart';

class ProgressBar extends StatelessWidget {
  final double value;

  const ProgressBar(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 7,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primarySwatch.shade50,
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 7,
                  left: 0,
                  bottom: 6,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: FractionallySizedBox(
                      widthFactor: value,
                      child: Container(
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primarySwatch.shade600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 37,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "${(value * 100).toInt()}%",
                style: TextStyles.textSmMedium.apply(color: graySwatch.shade600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
