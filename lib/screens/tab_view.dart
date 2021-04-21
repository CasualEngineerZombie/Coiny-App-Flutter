import 'package:coiny/widgets/charts.dart';
import 'package:coiny/widgets/second_chart.dart';
import 'package:coiny/widgets/third_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin{
  TabController _tabController;

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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "US\$3,457.50",
                style: TextStyle(fontSize: 38, fontFamily: 'SF'),
              ),
              Text(
                "8:00 AM Friday, Aug 11,2017",
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
                  controller: _tabController,
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
            controller: _tabController,
            children: [
              ChartScreen(),
              SecondChart(),
              ThirdChart(),
              ChartScreen(),
              SecondChart(),
            ],
          ),
        ),
        Divider(
          height: 2,
        ),
        Container(
          height: _height * 0.2,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    // height: _height * 0.08,
                    padding: EdgeInsets.all(20),
                    width: _width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: mainColor,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: (Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  // height: _height * 0.08,
                  padding: EdgeInsets.all(20),
                  width: _width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // color: mainColor,
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: (Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ],
            ),
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
