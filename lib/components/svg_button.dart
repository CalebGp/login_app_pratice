import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgButton extends StatelessWidget {
  final String path;
  final void Function() onPressed;

  const SvgButton({
    super.key,
    required this.path,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 11.0),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            Container(
              width: 42,
              height: 42,
              padding: const EdgeInsets.all(6),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x1E000000),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: SvgPicture.asset(
                      "icons/$path.svg",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
