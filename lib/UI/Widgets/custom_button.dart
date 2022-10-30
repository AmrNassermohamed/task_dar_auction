// ignore_for_file: must_be_immutable

import '../../Resources/main_imports.dart';

class DefaultButton extends StatelessWidget {
  Color? background;
  Color? textColor;

  bool isWidget = true;
  double? radius;

  double? btnWidth;
  double? btnHeight;

  final Function function;
  String? text;
  Widget? widget;
  double? fontSize;
  FontWeight? fontWeight;

  DefaultButton(
      {Key? key,
      required this.function,
      this.text,
      this.background,
      this.btnWidth,
      this.textColor,
      required this.isWidget,
      this.fontSize,
      this.fontWeight,
      this.radius,
      this.btnHeight,
      this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight ?? height(context) * .06,
      width: btnWidth ?? width(context),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          function();
        },
        child: !isWidget
            ? widget
            : Text(
                text!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: textColor ?? ColorManager.primaryColor,
                    fontSize: fontSize ?? FontSize.textHeader(context),
                    fontWeight: fontWeight ?? FontWeight.w600),
              ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius ?? 30.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3), //
          )
        ],
        color: background ?? ColorManager.wight,
      ),
    );
  }
}
