import '../../../../Resources/main_imports.dart';

class SomeProducts extends StatelessWidget {
  const SomeProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return    LayoutBuilder(builder: (context, constraints)
    {
    return SizedBox(
        height: constraints.maxWidth>400? height(context) * .26:height(context) * .22,
        child: ListView.separated(

            itemCount: 4,
            separatorBuilder: (context, index) => AppSize.spaceWidth1(context),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(AppSize.padding2(context)),
                child: Container(
                  padding: EdgeInsets.all(AppSize.padding2(context)),
                  margin: EdgeInsets.all(AppSize.margin1(context)),
                  width: width(context) * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorManager.wight70,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3), //
                      )
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              child: Padding(
                                  padding:
                                      EdgeInsets.all(AppSize.padding1(context)),
                                  child: Image.asset(
                                    "assets/images/Layer 51.png",height: height(context)*08,
                                  )),
                              backgroundColor: ColorManager.wight,
                              radius: AppSize.borderRadius15(context),
                            )
                          ],
                        ),
                        Image.asset(
                            "assets/images/MacBook_Air_Retina_M1_240x160 1.png",
                            height: height(context) * .08),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Macbook Air M1',
                                style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: FontSize.textS14(context),
                                )),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$ 15,999',
                                  style: TextStyle(
                                    color: ColorManager.blackColor,
                                    fontSize: FontSize.textS14(context),
                                  )),
                            ])
                      ],
                    ),
                  ),
                ))));});
  }
}
