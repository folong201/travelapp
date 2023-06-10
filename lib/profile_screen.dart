import 'package:flutter/material.dart';
import 'package:traavel201/app_styles.dart';
import 'package:traavel201/size_config.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLighterwhite,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1486326658981-ed68abe5868e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJlYXV0aWZ1bGwlMjBjYXIlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.blocksizeHorizontal! * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Folong 201",
                          style: kPoppinsBold.copyWith(
                              color: kDarckBlue,
                              fontSize: SizeConfig.blocksizeHorizontal! * 4),
                        ),
                        Text(
                          "Author &Writer",
                          style: kPoppinsRegularBold.copyWith(
                              color: kDarckBlue,
                              fontSize: SizeConfig.blocksizeHorizontal! * 3),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 42,
                          maxWidth: SizeConfig.blocksizeHorizontal! * 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: kBlue,
                      ),
                      child: Center(child: Text("Folowing")),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizevertical! * 2.5,
            ),
            Text(
              " We have passed the path to our SVG file as the asset argument. We have then used the SvgPicture widget in our Flutter app.",
              style: kPoppinsMediumBold.copyWith(color: kDarckBlue),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: SizeConfig.blockSizevertical! * 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kDarckBlue),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "54.21K",
                        style: kPoppinsBold.copyWith(color: kLightwhite),
                      ),
                      Text(
                        "Followers",
                        style: kPoppinsBold.copyWith(color: kLightwhite),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    decoration: BoxDecoration(color: kLightwhite),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: SizeConfig.blocksizeHorizontal! * 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2.11K",
                          style: kPoppinsBold.copyWith(color: kLightwhite),
                        ),
                        Text(
                          "Posts",
                          style: kPoppinsBold.copyWith(color: kLightwhite),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    decoration: BoxDecoration(color: kLightwhite),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "36.40K",
                        style: kPoppinsBold.copyWith(color: kLightwhite),
                      ),
                      Text(
                        "Followers",
                        style: kPoppinsBold.copyWith(color: kLightwhite),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Raoul's Post",
                  style: kPoppinsRegularBold.copyWith(
                      color: kDarckBlue,
                      fontSize: SizeConfig.blocksizeHorizontal! * 6),
                ),
                Text(
                  "View all",
                  style: kPoppinsRegularBold.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blocksizeHorizontal! * 3),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizevertical! * 15,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: SizeConfig.blockSizevertical! * 15,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGfa-F8V6cnv1BvYgwfUmmAgEznafP7ATCuw&usqp=CAU"))),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Newa Politics",
                                    style: kPoppinsBold.copyWith(
                                        color: kDarckBlue),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "widget and pass the path to your SVG file as the asset argument.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: kPoppinsMediumBold.copyWith(
                                        color: kDarckBlue),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("date"),
                                      Text("time"),
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular From Douala",
                  style: kPoppinsRegularBold.copyWith(
                      color: kDarckBlue,
                      fontSize: SizeConfig.blocksizeHorizontal! * 6),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizevertical! * 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: SizeConfig.blockSizevertical! * 30,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGfa-F8V6cnv1BvYgwfUmmAgEznafP7ATCuw&usqp=CAU"))),
                          ),
                          // Padding(
                          //     padding: const EdgeInsets.all(8.0),
                          //     child: SizedBox(
                          //       width: 150,
                          //       child: Column(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Text(
                          //             "Newa Politics",
                          //             style: kPoppinsBold.copyWith(
                          //                 color: kDarckBlue),
                          //           ),
                          //           SizedBox(
                          //             width: 15,
                          //           ),
                          //           Text(
                          //             "widget and pass the path to your SVG file as the asset argument.",
                          //             maxLines: 2,
                          //             overflow: TextOverflow.ellipsis,
                          //             style: kPoppinsMediumBold.copyWith(
                          //                 color: kDarckBlue),
                          //           ),
                          //           SizedBox(
                          //             height: 10,
                          //           ),
                          //           Row(
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.spaceBetween,
                          //             children: [
                          //               Text("date"),
                          //               Text("time"),
                          //             ],
                          //           )
                          //         ],
                          //       ),
                          //     ))
                        ],
                      ),
                    );
                  }),
            ),
          ],
        )),
      ),
    );
  }
}
