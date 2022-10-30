import '../../Resources/main_imports.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor =  Color(0xFFB6B6B6);
    return Container(

      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.19),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [


              TextButton.icon(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(color: ColorManager.primaryColor),
                  backgroundColor:   ColorManager.primaryColor.withOpacity(.3),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                onPressed: () => {},
                icon: Image.asset("assets/images/Vector (2).png"),
                label: Text('Home',style:TextStyle(
                  color: ColorManager.primaryColor,
                  fontSize: FontSize.textS16(context),
                )),
              ),
              IconButton(

                icon: Icon(Icons.shopping_bag_outlined,
                  size: width(context)*0.045,
                  color: MenuState.restaurant != selectedMenu
                      ? ColorManager.greyDarkColor
                      : inActiveIconColor,
                ),
                onPressed: () {
                //  AppNavigator.navigateTo(context,const RestaurantsScreen());
                },
              ),
              IconButton(
                icon:Icon(Icons.favorite_border,             size: width(context)*0.045,   color: MenuState.playGround != selectedMenu
                    ? ColorManager.greyDarkColor
                    : inActiveIconColor,),

                onPressed: () {
                  //AppNavigator.navigateTo(context,const PlayGroundScreen());
                },
              ),
              IconButton(
                icon:Icon(
                  Icons.person,
                  size: width(context)*0.045,
                  color: MenuState.events != selectedMenu
                      ?ColorManager.greyDarkColor
                      : inActiveIconColor,
                ),
                onPressed: () {}
                   // AppNavigator.navigateTo(context,const EventsScreen()),
              ),
            ],
          )),
    );
  }
}
enum MenuState { news, restaurant, events, playGround }