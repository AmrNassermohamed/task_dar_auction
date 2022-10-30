import '../../../Resources/main_imports.dart';
import '../../../ui/Screens/HomeScreen/Components/home_categories.dart';
import '../../../ui/Screens/HomeScreen/Components/home_header.dart';
import '../../../ui/Screens/HomeScreen/Components/hot_sales.dart';
import '../../../ui/Screens/HomeScreen/Components/some_products.dart';
import '../../Widgets/bottom_nav_Bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Stack(
            children: <Widget>[

        Container(
          padding: EdgeInsets.all(AppSize.padding2(context)),
          height: height(context),
          width: width(context),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageAssets.splashBackground),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSize.spaceHeight2(context),
                const HomeHeader(),
                AppSize.spaceHeight1(context),
            Center(child:    Image.asset(ImageAssets.sale)),
                AppSize.spaceHeight1(context),
                const HomeCategories(),
                AppSize.spaceHeight2(context),
                Text('Hot sales',
                    style: TextStyle(
                      color: ColorManager.blackColor,

                        fontStyle: FontStyle.italic,
                      fontSize: FontSize.textS18(context),
                    )),
                AppSize.spaceHeight2(context),
                const HotSales(),
                AppSize.spaceHeight2(context),
                Text('Technology',
                    style: TextStyle(
                      color: ColorManager.blackColor,

                        fontStyle: FontStyle.italic,
                      fontSize: FontSize.textS18(context),
                    )),

                const SomeProducts(),

                AppSize.spaceHeight6(context),

              ],
            ),
          ),
        ),
              const Align(
                  alignment: Alignment.bottomCenter,
                  child:CustomBottomNavBar (selectedMenu: MenuState.news,))
      ]),

      ),
    );
  }
}
