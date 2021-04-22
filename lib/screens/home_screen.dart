import 'package:coiny/screens/register_screen.dart';
import 'package:coiny/widgets/buttons.dart';
import 'package:coiny/widgets/charts.dart';
import 'package:coiny/widgets/second_chart.dart';
import 'package:coiny/widgets/third_chart.dart';
import 'package:flutter/material.dart';
import 'package:coiny/constants.dart';

import '../constants.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final months = [
    'Jan',
    'Feb',
    'March',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            // color: Colors.red,
            margin: EdgeInsets.only(top: 10, right: 10),
            child: (svgLogo),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  TabContainer(
                    value: 'BTC',
                  ),
                  TabContainer(
                    value: 'BCH',
                  ),
                  TabContainer(
                    value: 'ETH',
                  ),
                  TabContainer(
                    value: 'LTC',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              TabViewColumn(
                  tabController: _tabController,
                  firstGraph: ChartScreen(),
                  height: _height,
                  width: _width,
                  value: 54000.0,
                  date: '8:00 AM Friday, April 21, 2021'),
              TabViewColumn(
                  tabController: _tabController,
                  firstGraph: SecondChart(),
                  height: _height,
                  width: _width,
                  value: 2300.0,
                  date: '8:00 AM Friday, April 21, 2021'),
              TabViewColumn(
                  tabController: _tabController,
                  firstGraph: ThirdChart(),
                  height: _height,
                  width: _width,
                  value: 500.0,
                  date: '8:00 AM Friday, April 21, 2021'),
              TabViewColumn(
                  tabController: _tabController,
                  firstGraph: SecondChart(),
                  height: _height,
                  width: _width,
                  value: 213.0,
                  date: '8:00 AM Friday, April 21, 2021'),
            ],
          ),
        ),
      ),
    );
  }
}

class TabViewColumn extends StatelessWidget {
  TabViewColumn({
    @required this.tabController,
    this.height,
    this.width,
    this.date,
    this.value,
    @required this.firstGraph,
  });
  final TabController tabController;
  final double height;
  final double width;
  final double value;
  final date;
  final firstGraph;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$$value",
                style: TextStyle(fontSize: 38, fontFamily: 'SF'),
              ),
              Text(
                date,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                    // color: Colors.grey[300],
                    ),
                child: TabBar(
                  isScrollable: false,
                  controller: tabController,
                  // labelColor: Colors.red,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    TabContent(value: '1H'),
                    TabContent(value: '1D'),
                    TabContent(value: '1W'),
                    TabContent(value: '1Y'),
                    TabContent(value: 'ALL'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 2,
        ),
        Expanded(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              SecondChart(),
              SecondChart(),
              ThirdChart(),
              SecondChart(),
              SecondChart(),
            ],
          ),
        ),
        Divider(
          height: 2,
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              HomeButton(
                borderRadius: 50,
                verticalPadding: 10,
                height: _height*0.08,
                width: _width * 0.93,
                textValue: 'SIGNUP',
                buttonColor: mainColor,
                textColor: Colors.white,
                onPressedValue: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RegisterScreen(),
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              HomeButton(
                borderRadius: 50,
                verticalPadding: 10,
                height: _height*0.08,
                width: _width * 0.93,
                textValue: 'LOGIN',
                buttonColor: Colors.white,
                textColor: Colors.black,
                onPressedValue: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



class TabContainer extends StatelessWidget {
  final value;
  TabContainer({this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        value,
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
        ),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final value;

  TabContent({this.value});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        value,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 13,
        ),
      ),
    );
  }
}
