import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traavel201/Second.dart';
import 'package:traavel201/news_details_screen.dart';
import 'package:traavel201/profile_screen.dart';
import 'app_styles.dart';
import 'size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[ 
    Changer(),
    ProfileScreen(),
    NewDetailsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: kwhite,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/send2.svg'),
            label: 'Home',
          ),  
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/send2.svg'),
            label: 'Profile',
          ),clear
          
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/send2.svg'),
            label: 'News',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     int selected = 0;

//     void changePage(int index) {
//       setState(() {
//         selected = index;
//         print(selected);
//       });
//     }

//     final List<Widget> widgetOption = <Widget>[
//       Text("data"),
//       Text("data1"),
//       Changer(),
//       ProfileScreen(),
//       NewDetailsScreen()
//     ];

//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 0,
//         backgroundColor: kwhite,
//         type: BottomNavigationBarType.fixed,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: selected == 0
//                   ? SvgPicture.asset('assets/send2.svg')
//                   : SvgPicture.asset('assets/send2.svg'),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: selected == 1
//                   ? SvgPicture.asset('assets/send2.svg')
//                   : SvgPicture.asset('assets/send2.svg'),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: selected == 2
//                   ? SvgPicture.asset('assets/send2.svg')
//                   : SvgPicture.asset('assets/send2.svg'),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: selected == 3
//                   ? SvgPicture.asset('assets/send2.svg')
//                   : SvgPicture.asset('assets/send2.svg'),
//               label: ""),
//         ],
//         currentIndex: selected,
//         onTap: changePage,
//       ),
//       body: Center(child: widgetOption.elementAt(selected)),
//     );
//   }
// }

class Changer extends StatefulWidget {
  // int selected;

  Changer({super.key});

  @override
  State<Changer> createState() => _ChangerState();
}

class _ChangerState extends State<Changer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      children: [
        Row(
          children: [
            Container(
              height: 51,
              width: 51,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: klightBlue,
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4uwHua1yq54XkM87YAlrCrZe7dIvWFyTOFA&usqp=CAU"))),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              children: [
                Text(
                  "Welcome Back ! ",
                  style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blocksizeHorizontal! * 4,
                  ),
                ),
                Text(
                  "Monday,3 june 2023",
                  style: kPoppinsBold.copyWith(
                    color: kGrey,
                    fontSize: SizeConfig.blocksizeHorizontal! * 3,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kwhite,
            boxShadow: [
              BoxShadow(
                  color: kDarckBlue.withOpacity(0.051),
                  offset: const Offset(0.0, 3.0),
                  spreadRadius: 0.0)
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: kPoppinsRegularBold.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blocksizeHorizontal! * 3),
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 13),
                      hintText: "search for article ...",
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      hintStyle: kPoppinsBold.copyWith(
                        color: kDarckBlue,
                        fontSize: SizeConfig.blocksizeHorizontal! * 3,
                      )),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: kBlue,
                    borderRadius: BorderRadius.circular(kBorderRadius)),
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/find.svg',
                      color: kLighterwhite,
                    )),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 14,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    "# Healt",
                    style: kPoppinsMediumBold.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blocksizeHorizontal! * 3,
                    ),
                  ),
                );
              }),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.all(12.0),
                    height: 304,
                    width: 255,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: kwhite,
                        boxShadow: [
                          BoxShadow(
                              color: kDarckBlue.withOpacity(0.051),
                              offset: Offset(0, 3.0),
                              blurRadius: 24.0,
                              spreadRadius: 0.0)
                        ]),
                    child: Column(
                      children: [
                        Container(
                          height: 164,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGfa-F8V6cnv1BvYgwfUmmAgEznafP7ATCuw&usqp=CAU"))),
                          child: Center(
                              child: Text(
                            "text on the container",
                            style: kPoppinsBold.copyWith(color: kwhite),
                          )),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Flexible(
                            child: Text(
                          "The beach is a place of peace, relaxation, and fun. It's a great place to swim, sunbathe, build sandcastles, or simply enjoy the beauty of nature.",
                          style: kPoppinsBold.copyWith(
                              fontSize: SizeConfig.blocksizeHorizontal! * 3.5),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 19,
                              backgroundColor: klightBlue,
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3bh1q206niPi0Vh6pqG2EEcAa6gKUAvNvew&usqp=CAU"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "FOLONG EMERSON",
                                  style: kPoppinsBold.copyWith(
                                      fontSize:
                                          SizeConfig.blocksizeHorizontal! * 3),
                                ),
                                Text(
                                  "un autre texte",
                                  style: kPoppinsBold.copyWith(
                                      fontSize:
                                          SizeConfig.blocksizeHorizontal! * 3),
                                )
                              ],
                            ),
                            Container(
                              height: 38,
                              width: 38,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                  color: kLighterBlue),
                              child: SvgPicture.asset("send2.svg"),
                            )
                          ],
                        ),
                      ],
                    ));
              }),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Short For You",
              style: kPoppinsBold.copyWith(
                  fontSize: SizeConfig.blocksizeHorizontal! * 4.5),
            ),
            Text(
              "View All",
              style: kPoppinsBold.copyWith(
                  color: kBlue, fontSize: SizeConfig.blocksizeHorizontal! * 3),
            ),
          ],
        ),
        const SizedBox(
          height: 19,
        ),
        SizedBox(
          height: 88,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(9),
                margin: const EdgeInsets.only(right: 20),
                width: 208,
                height: 88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    boxShadow: [
                      BoxShadow(
                        color: kDarckBlue.withOpacity(0.051),
                        offset: const Offset(0.0, 3.0),
                        blurRadius: 24.0,
                        spreadRadius: 0.0,
                      )
                    ]),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      decoration: BoxDecoration(
                        color: kwhite,
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk4xKGKOh5x9Xw7FlsdJ4U3SHPnQJqlEkJujhWA-2gJaswzjHENmzRQlTY5gslrYM7KTk&usqp=CAU")),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Flexible(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Top  Trebding Island in 2022",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blocksizeHorizontal! * 3.5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("svg_icon/eyes.svg"),
                            Text(
                              "999, 000",
                              style: kPoppinsMediumBold.copyWith(
                                color: kGrey,
                                fontSize: SizeConfig.blocksizeHorizontal! * 3,
                              ),
                            )
                          ],
                        )
                      ],
                    ))
                  ],
                ),
              );
            },
          ),
        )
      ],
    ));
  }
}

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, "/home");
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    
