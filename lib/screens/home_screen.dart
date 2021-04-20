import 'package:coiny/widgets/charts.dart';
import 'package:flutter/material.dart';
import 'package:coiny/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
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
            children: [
              Column(
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
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        ChartScreen(),
                        ChartScreen(),
                        ChartScreen(),
                        ChartScreen(),
                        ChartScreen(),
                      ],
                    ),
                  ),
                  Container(
                    height: _height * 0.2,
                  ),
                ],
              ),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.biotech_outlined, size: 350),
            ],
          ),
        ),
      ),
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

