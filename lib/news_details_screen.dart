import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traavel201/app_styles.dart';
import 'package:traavel201/size_config.dart';

class NewDetailsScreen extends StatelessWidget {
  const NewDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizevertical! * 50,
              child: Stack(
                children: [
                  FullScreenSlider(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            height: 50,
                            width: 50,
                            child: SvgPicture.asset("assetName"),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                border: Border.all(color: kwhite)),
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            height: 50,
                            width: 50,
                            child: SvgPicture.asset("assetName"),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                border: Border.all(color: kwhite)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(42),
                              topRight: Radius.circular(42)),
                          color: kLighterwhite),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kpaddinHorizontal),
              child: Text(
                "Unrevel Mistery \nOf the maladive",
                style: kPoppinsBold.copyWith(
                  color: kDarckBlue,
                  fontSize: SizeConfig.blocksizeHorizontal! * 7,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  border: Border.all(color: kBoderColor)),
              child: Row(
                children: [
                SizedBox(width: 5,),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: kBlue,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1486326658981-ed68abe5868e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJlYXV0aWZ1bGwlMjBjYXIlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
                  ),
                  SizedBox(
                    width: SizeConfig.blocksizeHorizontal! * 2.5,
                  ),
                  Text(
                    " Folong  Emerson . Juin 2023 Lire",
                    style: kPoppinsRegularBold.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blocksizeHorizontal! * 3),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
             Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kpaddinHorizontal,
              ),
              child: Text(
                  "The beach was a beautiful sight to behold. The sand was soft and white, and the water was a clear blue. The waves crashed gently against the shore, and the sun shone brightly overhead. There were a few people swimming, sunbathing, and playing in the sand. The air was filled with the sound of laughter and the smell of the ocean. It was a perfect day at the beach.",style: kPoppinsRegularBold.copyWith(
                    color: kDarckBlue,
                    fontSize: 22
                  ),),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}

final List<String> imageList = [
  "https://images.unsplash.com/photo-1515569067071-ec3b51335dd0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsbCUyMGNhciUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://media.istockphoto.com/id/453607245/photo/beautifull-bosphorus.webp?b=1&s=170667a&w=0&k=20&c=v_pdF1nCGBvO94huHcIlqNdXakI0A9CrEKpUgFXeiko=",
  "https://images.unsplash.com/photo-1484136540910-d66bb475348d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGJlYXV0aWZ1bGwlMjBjYXIlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({super.key});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  final controller = new CarouselController();
  int curent = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
              height: SizeConfig.blockSizevertical! * 50,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              onPageChanged: ((index, reason) {
                setState(() {
                  curent = index;
                });
              }),
              initialPage: curent),
          items: imageList
              .map((image) => Center(
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                      height: SizeConfig.blockSizevertical! * 50,
                      width: double.infinity,
                    ),
                  ))
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map((entry) => GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: kpaddinHorizontal),
                          child: SvgPicture.asset("assets/send2.svg"),
                        ),
                        onTap: () {
                          controller.animateToPage(entry.key);
                        },
                      ))
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
