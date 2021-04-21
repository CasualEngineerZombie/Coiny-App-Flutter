import 'package:coiny/screens/tab_view.dart';
// import 'package:coiny/widgets/charts.dart';
// import 'package:coiny/widgets/second_chart.dart';
// import 'package:coiny/widgets/third_chart.dart';
import 'package:flutter/material.dart';
import 'package:coiny/constants.dart';

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
    // final _width = MediaQuery.of(context).size.width;
    // final _height = MediaQuery.of(context).size.height;

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
              TabView(),
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

