import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';
import 'featured_plant.dart';
import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchbox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured plants",
          press: (){},),
          FeaturedPlant(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}


