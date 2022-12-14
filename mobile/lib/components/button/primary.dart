import 'package:curved_progress_bar/curved_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/theme/text_styles.dart';
import 'package:mobile/utils/theme/theme.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final bool loading;
  final bool disabled;
  final bool fullWidth;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.loading = false,
    this.fullWidth = false,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = loading
        ? const SizedBox(
            width: 16,
            height: 16,
            child: CurvedCircularProgressIndicator(
              color: Colors.white,
              backgroundColor: Colors.transparent,
            ),
          )
        : Text(
            text,
            style: TextStyles.textMdMedium.apply(color: Colors.white),
          );

    return SizedBox(
      height: 44,
      child: Material(
        color: !disabled ? Theme.of(context).primaryColor : primarySwatch.shade100,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          highlightColor: loading || disabled ? Colors.transparent : null,
          splashColor: loading || disabled ? Colors.transparent : null,
          onTap: () {
            if (!loading && !disabled) onTap();
          },
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: fullWidth ? Center(child: content) : content,
          ),
        ),
      ),
    );
  }
}
