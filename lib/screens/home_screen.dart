import 'package:flutter/material.dart';
import 'package:potbelly/routes/router.dart';
import 'package:potbelly/routes/router.gr.dart';
import 'package:potbelly/values/values.dart';
import 'package:potbelly/values/data.dart';
import 'package:potbelly/widgets/category_card.dart';
import 'package:potbelly/widgets/foody_bite_card.dart';
import 'package:potbelly/widgets/heading_row.dart';
import 'package:potbelly/widgets/search_input_field.dart';
import 'package:potbelly/widgets/spaces.dart';

class HomeScreen extends StatelessWidget {
  static const int TAB_NO = 0;

  HomeScreen({Key key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            margin: const EdgeInsets.only(
              left: Sizes.MARGIN_16,
              right: Sizes.MARGIN_16,
              top: Sizes.MARGIN_16,
            ),
            child: Column(
              children: [
                FoodyBiteSearchInputField(
                  ImagePath.searchIcon,
                  controller: controller,
                  textFormFieldStyle:
                  Styles.customNormalTextStyle(color: AppColors.accentText),
                  hintText: StringConst.HINT_TEXT_HOME_SEARCH_BAR,
                  hintTextStyle:
                  Styles.customNormalTextStyle(color: AppColors.accentText),
                  suffixIconImagePath: ImagePath.settingsIcon,
                  borderWidth: 0.0,
                  onTapOfLeadingIcon: () => AppRouter.navigator.pushNamed(
                    AppRouter.searchResultsScreen,
                    arguments: SearchValue(
                      controller.text,
                    ),
                  ),
                  onTapOfSuffixIcon: () =>
                      AppRouter.navigator.pushNamed(AppRouter.filterScreen),
                  borderStyle: BorderStyle.solid,
                ),
                Container(
                  height: 430,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    separatorBuilder: (context, index) {
                      return SpaceH8();
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        child: FoodyBiteCard(
                          onTap: () =>
                              AppRouter.navigator.pushNamed(
                                AppRouter.restaurantDetailsScreen,
                                arguments: RestaurantDetails(
                                  imagePath: imagePaths[index],
                                  restaurantName: restaurantNames[index],
                                  restaurantAddress: addresses[index],
                                  rating: ratings[index],
                                  category: category[index],
                                  distance: distance[index],
                                ),
                              ),
                          imagePath: imagePaths[index],
                          status: status[index],
                          cardTitle: restaurantNames[index],
                          rating: ratings[index],
                          //bookmark: true,
                          category: category[index],
                          distance: distance[index],
                          address: addresses[index],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),



//        ListView(
//          scrollDirection: Axis.vertical,
//          children: <Widget>[
//            FoodyBiteCard(
//              imagePath: ImagePath.breakfastInBed,
//              status: StringConst.STATUS_OPEN,
//              cardTitle: "Happy Bones",
//              category: StringConst.ITALIAN,
//              distance: "12 km",
//              address: "394 Broome St, New York, NY 10013, USA",
//              bookmark: true,
//              onTap: () => navigateToDetailScreen(),
//            ),
//            SizedBox(height: Sizes.WIDTH_16),
//            FoodyBiteCard(
//              imagePath: ImagePath.dinnerIsServed,
//              status: StringConst.STATUS_OPEN,
//              rating: "4.8",
//              cardTitle: "Pappas Pizza",
//              category: StringConst.CHINESE,
//              distance: "2 km",
//              address: "917 Zoom St, California, CA 20093, USA",
//              bookmark: true,
//              onTap: () => navigateToDetailScreen(),
//            ),
//            SizedBox(height: Sizes.WIDTH_16),
//            FoodyBiteCard(
//              imagePath: ImagePath.breakfastInBed,
//              status: StringConst.STATUS_CLOSE,
//              rating: "3.7",
//              cardTitle: "Shantell's",
//              category: StringConst.ITALIAN,
//              distance: "4 km",
//              address: "34 Devil St, New York, NY 11013, USA",
//              bookmark: true,
//              onTap: () => navigateToDetailScreen(),
//            ),
//            SizedBox(height: Sizes.WIDTH_16),
//            FoodyBiteCard(
//              imagePath: ImagePath.dinnerIsServed,
//              status: StringConst.STATUS_CLOSE,
//              rating: "2.3",
//              cardTitle: "Dragon Heart",
//              category: StringConst.CHINESE,
//              distance: "5 km",
//              address: "417 Doom St, California, CA 90013, USA",
//              bookmark: true,
//              onTap: () => navigateToDetailScreen(),
//            ),
//          ],
//        ),
        ),
      ),
    );
  }
}