import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: TextStyle(
        color: Color.fromRGBO(127, 183, 126, 1),
      ),
    ),
    Text(
      'Index 1: Driver',
      style:TextStyle(
        color: Color.fromRGBO(127, 183, 126, 1),
      ),
    ),
    Text(
      'Index 2: Vehicle',
      style: TextStyle(
        color: Color.fromRGBO(127, 183, 126, 1),
      ),
    ),
    

    Text(
      'Index 3: Routes',
      style: TextStyle(
        color: Color.fromRGBO(88, 189, 86, 1),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0.0,
        // excludeHeaderSemantics : true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Center(
          child: Column(
            children: [
              Text(
                "Ad bannar",
                style: TextStyle(
                    // backgroundColor: Colors.white,
                    fontFamily: "Quicksand",
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Color.fromARGB(255, 255, 178, 144),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        // textAlign:TextAlign.left,
                        "Home Screen",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // drawer:Drawer(
      //   backgroundColor:Colors.black,
      //   shadowColor:Colors.black,
      // ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 128,
                height: 105,
                decoration: BoxDecoration(
                    // color: Color(0xFFC09000),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignInside,
                      color: Color.fromARGB(255, 255, 178, 144),
                    )),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    // SizedBox(height: 5,),
                    Center(
                      child: Text(
                        "Schedule",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      size: 30,
                      Icons.schedule_sharp,
                      color: Color.fromARGB(255, 255, 178, 144),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 128,
                height: 105,
                decoration: BoxDecoration(
                    // color: Color(0xFFC09000),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignInside,
                      color: Color.fromARGB(255, 255, 178, 144),
                    )),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Log Report",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      size: 30,
                      Icons.repartition_outlined,
                      color: Color.fromARGB(255, 255, 178, 144),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 128,
                height: 105,
                decoration: BoxDecoration(
                    // color: Color(0xFFC09000),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignInside,
                      color: Color.fromARGB(255, 255, 178, 144),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Active Vehicles",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      size: 30,
                      // fill:0.5,
                      Icons.contact_page_sharp,
                      color: Color(0xFFFFB290),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels:true,
        
        // backgroundColor: Color.fromARGB(0, 20, 154, 20),
            backgroundColor: Color(0xDFF3DF01)
,
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            
              color: Color(0xFFFFB290),
              ),
            label:"Home",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Color(0x007FB77E),
            icon: Icon(
              Icons.person,
              color:  Color(0xFFFFB290),
              ),
            label: 'Driver',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bus_alert,
            color: Color(0xFFFFB290),
              ),
            label: 'Vehicle',

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.route,
              color: Color(0xFFFFB290),
              
              ),
            label: 'Routes',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
