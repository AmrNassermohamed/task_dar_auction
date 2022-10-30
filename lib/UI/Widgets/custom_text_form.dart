import '../../Resources/main_imports.dart';

class EditorText extends StatelessWidget {
  final String label;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? title;
  final double fileWidth;
  double? fileHeight;
  bool? isPassword = false;
  IconData? suffix;

 Function? suffixPressed;
  String? Function()? validate;
  Function()? onTap;
  TextStyle? textStyle;
  Function(String?)? onChanged;
  Iterable<String>? autofillHints;
  String? errorText;
  final Widget? prefixIcon;
  int? minLine;
  int? maxLine;

  EditorText(
      {this.controller,
      Key? key,
      this.errorText,
      this.validate,
      this.fileHeight,
      this.maxLine,
      this.minLine,
      this.keyboardType,
        this.textStyle,
      this.title,
      this.suffixPressed,
      this.isPassword,
      this.suffix,
      this.prefixIcon,
      this.onTap,
      this.onChanged,
      this.autofillHints,
      required this.fileWidth,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      TextFormField(
onFieldSubmitted: onChanged,
            controller: controller,
            obscureText: isPassword!,
            minLines: minLine ?? 1,
            maxLines: maxLine ?? 1,
            autocorrect: true,
            autofillHints: autofillHints,

            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.next,
            onEditingComplete: () => FocusScope.of(context).nextFocus(),
            validator: (String? value) {
              validate!();
              if (value!.isEmpty) {
                return "لا يجب ان يكون الحقل فارغً !";
              }
              if (validate != null) {
                return validate!();
              }
              return null;
            },
            onTap: onTap,
            decoration: InputDecoration(
              // border: OutlineInputBorder(
              //   // borderSide: BorderSide(width: 1, color: ColorManager.grayLiner),
              //   borderRadius: BorderRadius.circular(35.0),
              // ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: ColorManager.grayColor),
                borderRadius: BorderRadius.circular(35.0),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: ColorManager.grayColor),
                borderRadius: BorderRadius.circular(35.0),
              ),

              errorText: errorText,
              suffixIcon: suffix != null
                  ? IconButton(
                      onPressed: () {
                        suffixPressed!();
                      },
                      icon: Icon(
                        suffix,
                        color: ColorManager.blackColor,
                      ))
                  : null,
              prefixIcon: prefixIcon,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: width(context) * .080,
                  vertical: height(context) * .02),
              fillColor: ColorManager.wight,
              filled: true,

              errorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: ColorManager.error,
                  //#F2F2F2
                  width: 1,
                ),
              ),

              // label: Text(label,
              //     style: TextStyle(
              //         color: ColorManager.grayLiner,
              //         fontSize: FontSize.textS16(context))),
              hintText: label,
              hintStyle: textStyle,
              helperStyle: textStyle,
              //           labelStyle: TextStyle(
              //           color: ColorManager.blueTxtColor,
              // fontSize: FontSize.textS20(context)),
            ),
          ),

      ],
    );
  }
}
