import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:wearedesigners/constants.dart';
import 'package:wearedesigners/models/home_card_model.dart';
import 'package:wearedesigners/models/product_model.dart';
import 'package:wearedesigners/screens/home/widgets/home_card.dart';
import 'package:wearedesigners/screens/product/product_page.dart';
import 'package:wearedesigners/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  List<HomeCardModule> cardList = [
    HomeCardModule("Small stuff adds up!", "01-04-2022", "Last month, you made 42 transactions less than \$5, spending a total of \$147. What to cut down on frivolous spending?", false, blueColor, (){},generateCardActionBtn),
    HomeCardModule("You are doing well paying of your loans", "01-04-2022", "Last month, you made 42 transactions less than \$5, spending a total of \$147. What to cut down on frivolous spending?", true, greenColor, (){},Container()),
    HomeCardModule("Small stuff adds up!", "01-04-2022", "Last month, you made 42 transactions less than \$5, spending a total of \$147. What to cut down on frivolous spending?", false, purpleColor, (){},generateCardActionBtn),
    HomeCardModule("Small stuff adds up!", "01-04-2022", "Last month, you made 42 transactions less than \$5, spending a total of \$147. What to cut down on frivolous spending?",  true, pinkColor, (){},Container()),
  ];
  static Widget get generateCardActionBtn => GestureDetector(
    onTap: (){},
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Text("SETUP A GOAL",style: tabTextStyle,),
    ),
  );

  get getProfileDetails => Padding(
    padding: const EdgeInsets.only(
        left: defaultPadding, right: defaultPadding, top: 35),
    child: Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularProfileAvatar(
                '',
                child: Image.asset("assets/images/profile.png"),
                imageFit: BoxFit.fill,
                borderColor: Colors.white,
                borderWidth: 3,
                elevation: 8,

                radius: 35,
              ),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back, Mervin",
                      style: headlineStyle,
                    ),
                    Text(
                      "Your finical situation is looking good!",
                      style: subHeadlineStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        LinearPercentIndicator(
          padding: EdgeInsets.zero,
          animation: true,
          lineHeight: 10.0,
          animationDuration: 2000,
          percent: 0.7,
          barRadius: const Radius.circular(5),
          progressColor: blueColor,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Beginner Level",
              style: subHeadlineStyle,
            ),
            Text(
              "XP 380/500",
              style: subHeadlineStyle_bolt,
            )
          ],
        ),
      ],
    ),
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: AppBar(
          leading: Container(),
          foregroundColor: Colors.black87,
          actions: [
            PopupMenuButton<WhyFarther>(
              onSelected: (WhyFarther result) {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductPage(
                      product: ProductModule(header: "Nixon",bandType: "Strap",bandWidth: "18 mm",img: Image.asset("assets/images/product.jpg"),material: "Stainless Steel", price: 165.98,productDescription: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. and a search for 'lorem ipsum' \n\n 2. will uncover many web sites still in their infancy. making it look like readable English. and a sea If you want to touch any part of the screen, and be able to scroll",subHeader: "Men's C39 Genuine Leather  white dial"),
                    )),
                  );
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<WhyFarther>>[
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.harder,
                  child: Text('Working a lot harder'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.smarter,
                  child: Text('Being a lot smarter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.selfStarter,
                  child: Text('Being a self-starter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.tradingCharter,
                  child: Text('Placed in charge of trading charter'),
                ),
              ],
            ),
          ],
          flexibleSpace: getProfileDetails,
          bottom: TabBar(
            controller: _tabController,
            labelColor: blackColor,
            indicatorWeight: 3,
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            labelStyle: tabTextStyle,
            tabs: const <Widget>[
              Tab(
                text: "Today",
              ),
              Tab(
                text: "Monthly",
              ),
              Tab(
                text: "Yearly",
              ),
              Tab(
                text: "Future",
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: bg2Color, borderRadius: BorderRadius.circular(16)),
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(
              child:
              ListView.builder(
                  itemCount: cardList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: HomeCard(cardModule: cardList[index]),
                    );
                  }),
            ),
            const Center(
              child: Text("It's rainy here"),
            ),
            const Center(
              child: Text("It's sunny here"),
            ),
            const Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
