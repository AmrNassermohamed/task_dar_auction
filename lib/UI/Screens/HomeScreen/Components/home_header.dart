
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Resources/main_imports.dart';
import '../../../../ui/Screens/Search/search_screen.dart';
import '../../../Widgets/custom_text_form.dart';
import '../../../Widgets/navigate_to.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
  return  BlocProvider<HomeScreenCubit>(
        create: (context) =>
        HomeScreenCubit(),
        child: BlocConsumer<HomeScreenCubit, HomeScreenStates>(
        listener: (context, state) =>
    State is CategoriesSuccess,
    builder: (context, state) {


          return LayoutBuilder(builder: (context, constraints) {

    if(constraints.maxWidth>400){
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

    Expanded(
    child: EditorText(

   onChanged: (r){
     HomeScreenCubit.searchName=emailController.text;
     Navigation.navigateTo(
         context,
         const SearchScreen());
   },
    textStyle: TextStyle(
    color: ColorManager.grayColor,
    fontSize: FontSize.textS14(context)),
    prefixIcon: Padding(padding: EdgeInsets.all(AppSize.padding2(context)),child:
    Image.asset(ImageAssets.search,)),

    controller: emailController,
    label: 'Search products',
    fileWidth: width(context) - 60,
    keyboardType: TextInputType.emailAddress,
    isPassword: false,
    ),

    ),
    AppSize.spaceWidth3(context),
    GestureDetector(
      onTap: (){
        HomeScreenCubit.searchName=emailController.text;
        Navigation.navigateTo(
            context,
            const SearchScreen());
      },
      child: Stack(
      alignment: Alignment.topRight,
      children: [
      CircleAvatar(
      child: Image.asset(
      ImageAssets.notification,height: height(context)*.8,
      ),
      backgroundColor: ColorManager.wight,
      radius: AppSize.borderRadius20(context),
      ),
      CircleAvatar(
      backgroundColor: ColorManager.primaryColor,
      radius:8,
      )


      ],),
    )

    ],
    );

    }else{
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

    Expanded(
    child:
    EditorText(
    textStyle: TextStyle(
    color: ColorManager.grayColor,
    fontSize: FontSize.textS16(context)),
    prefixIcon: Image.asset(ImageAssets.search2px),
    controller: emailController,
    label: 'Search products',
    fileWidth: width(context) - 60,
    keyboardType: TextInputType.emailAddress,
    isPassword: false,
    ),
    ),

    AppSize.spaceWidth3(context),
    Column(mainAxisAlignment: MainAxisAlignment.center,children: [
    Center(
    child: Stack(
    alignment: Alignment.topRight,
    children: [
    CircleAvatar(
    child: Image.asset(
    ImageAssets.notification2px,
    ),
    backgroundColor: ColorManager.wight,
    radius: AppSize.borderRadius25(context),
    ),
    CircleAvatar(
    backgroundColor: ColorManager.primaryColor,
    radius:6,
    )
    ],
    ),
    )
    ],)

    ],
    );

    }
    });
    }));
  }
}
