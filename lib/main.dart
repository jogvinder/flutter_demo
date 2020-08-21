import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'ContactRowWidget.dart';
import 'Model/CountryModel.dart';
import 'QuickScrollBar.dart';



void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
        primaryColor: Color(0xff08527f),
      ),
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

  const Home();
}

class _HomeState extends State<Home>  with TickerProviderStateMixin{

  List<Country> nameList = []
    ..add(Country("A", ""))
    ..add(Country("Afghanistan", "+93"))
    ..add(Country("Albania", "+355"))
    ..add(Country("Algeria", "+213"))
    ..add(Country("American Samoa", "+1-684"))
    ..add(Country("Andorra", "+376"))
    ..add(Country("Angola", "+244"))
    ..add(Country("Anguilla", "+1-264"))
    ..add(Country("Antarctica", "+672"))
    ..add(Country("Antigua and Barbuda", "+1-268"))
    ..add(Country("Argentina", "+54"))
    ..add(Country("B", ""))
    ..add(Country("Bahamas", "+1-242"))
    ..add(Country("Bahrain", "+973"))
    ..add(Country("Bangladesh", "+880"))
    ..add(Country("Barbados", "+1-246"))
    ..add(Country("Belarus", "+375"))
    ..add(Country("Belgium", "+32"))
    ..add(Country("Belize", "+501"))
    ..add(Country("Benin", "+229"))
    ..add(Country("Bermuda", "+1-441"))
    ..add(Country("Bhutan", "+975"))
    ..add(Country("C", ""))
    ..add(Country("Cambodia", "+855"))
    ..add(Country("Cameroon", "+237"))
    ..add(Country("Canada", "+1"))
    ..add(Country("Cape Verde", "+238"))
    ..add(Country("Cayman Islands", "+1-345"))
    ..add(Country("Central African Republic", "+236"))
    ..add(Country("Chad", "+235"))
    ..add(Country("Chile", "+56"))
    ..add(Country("China", "+86"))
    ..add(Country("D", "+61"))
    ..add(Country("Denmark", "+45"))
    ..add(Country("Djibouti", "+253"))
    ..add(Country("Dominica", "+1-767"))
    ..add(Country("Dominican Republic", "+1-809"))
    ..add(Country("D", "+1-809"))
    ..add(Country("East Timor", "+670"))
    ..add(Country("Ecuador", "+593"))
    ..add(Country("Egypt", "+20"))
    ..add(Country("El Salvador", "+503"))
    ..add(Country("Equatorial Guinea", "+240"))
    ..add(Country("Eritrea", "+291"))
    ..add(Country("F", "+372"))
    ..add(Country("Falkland Islands", "+500"))
    ..add(Country("Faroe Islands", "+298"))
    ..add(Country("Fiji", "+679"))
    ..add(Country("Finland", "+358"))
    ..add(Country("France", "+33"))
    ..add(Country("French Polynesia", "+689"))
    ..add(Country("G", "+251"))
    ..add(Country("Gabon", "+241"))
    ..add(Country("Gambia", "+220"))
    ..add(Country("Georgia", "+995"))
    ..add(Country("Germany	", "+49"))
    ..add(Country("Ghana", "+233"))
    ..add(Country("Gibraltar", "+350"))
    ..add(Country("Greece", "+30"))
    ..add(Country("Greenland", "+299"))
    ..add(Country("Grenada", "+1-473"))
    ..add(Country("Guam", "+1-671"))
    ..add(Country("H", "+1-671"))
    ..add(Country("Haiti", "+509"))
    ..add(Country("Honduras", "+504"))
    ..add(Country("Hong Kong", "+852"))
    ..add(Country("Hungary", "+36"))
    ..add(Country("I", "+1-671"))
    ..add(Country("Iceland", "+354"))
    ..add(Country("India", "+91"))
    ..add(Country("Indonesia", "+62"))
    ..add(Country("Iran", "+98"))
    ..add(Country("Iraq", "+964"))
    ..add(Country("Ireland", "+353"))
    ..add(Country("Isle of Man", "+44-1624"))
    ..add(Country("Israel", "+972"))
    ..add(Country("Italy", "+39"))
    ..add(Country("Ivory Coast", "+225"))
    ..add(Country("J", "+225"))
    ..add(Country("Jamaica", "+1-876"))
    ..add(Country("Japan", "+81"))
    ..add(Country("Jersey", "+44-1534"))
    ..add(Country("Jordan", "+962"))
    ..add(Country("K", "+962"))
    ..add(Country("Kazakhstan", "+7"))
    ..add(Country("Kenya", "+254"))
    ..add(Country("Kiribati", "+686"))
    ..add(Country("Kosovo", "+383"))
    ..add(Country("Kuwait", "+965"))
    ..add(Country("Kyrgyzstan", "+996"))
    ..add(Country("L", "+996"))
    ..add(Country("Laos", "+856"))
    ..add(Country("Latvia", "+371"))
    ..add(Country("Lebanon", "+961"))
    ..add(Country("Lesotho", "+266"))
    ..add(Country("Liberia", "+231"))
    ..add(Country("Libya", "+218"))
    ..add(Country("Liechtenstein", "+423"))
    ..add(Country("Lithuania", "+370"))
    ..add(Country("Luxembourg", "+352"))
    ..add(Country("M", "+996"))
    ..add(Country("Macau", "+853"))
    ..add(Country("Macedonia", "+389"))
    ..add(Country("Madagascar", "+261"))
    ..add(Country("Malawi", "+265"))
    ..add(Country("Malaysia", "+60"))
    ..add(Country("Maldives", "+960"))
    ..add(Country("Mali", "+223"))
    ..add(Country("Malta", "+356"))
    ..add(Country("Marshall Islands", "+692"))
    ..add(Country("Mauritania", "+222"))
    ..add(Country("N", "+222"))
    ..add(Country("Namibia", "+264"))
    ..add(Country("Nauru", "+674"))
    ..add(Country("Nepal", "+977"))
    ..add(Country("Netherlands", "+31"))
    ..add(Country("Netherlands Antilles", "+599"))
    ..add(Country("New Caledonia", "+687"))
    ..add(Country("New Zealand", "+64"))
    ..add(Country("Nicaragua", "+505"))
    ..add(Country("Niger", "+227"))
    ..add(Country("O", "+234"))
    ..add(Country("Oman", "+968"))
    ..add(Country("P", "+234"))
    ..add(Country("Pakistan", "+92"))
    ..add(Country("Palau", "+680"))
    ..add(Country("Palestine", "+970"))
    ..add(Country("Panama", "+507"))
    ..add(Country("Paraguay	", "+595"))
    ..add(Country("Peru", "+51"))
    ..add(Country("Philippines", "+63"))
    ..add(Country("Pitcairn", "+64"))
    ..add(Country("Poland", "+48"))
    ..add(Country("Portugal", "+351"))
    ..add(Country("Q", "+351"))
    ..add(Country("Qatar", "+974"))
    ..add(Country("R", "+974"))
    ..add(Country("Reunion", "+262"))
    ..add(Country("Romania", "+40"))
    ..add(Country("Russia", "+7"))
    ..add(Country("Rwanda", "+250"))
    ..add(Country("S", "+974"))
//    ..add(Country("S", "+974"))
    ..add(Country("Saint Barthelemy", "+590"))
    ..add(Country("Saint Helena", "+290"))
    ..add(Country("Saint Lucia", "+1-758"))
    ..add(Country("Saint Martin", "+590"))
    ..add(Country("Samoa", "+685"))
    ..add(Country("San Marino", "+378"))
    ..add(Country("Saudi Arabia", "+966"))
    ..add(Country("Senegal", "+221"))
    ..add(Country("T", "+381"))
    ..add(Country("Taiwan", "+886"))
    ..add(Country("Tajikistan", "+992"))
    ..add(Country("Tanzania", "+255"))
    ..add(Country("Thailand", "+66"))
    ..add(Country("Togo", "+228"))
    ..add(Country("Tokelau", "+690"))
    ..add(Country("Tonga", "+676"))
    ..add(Country("Tunisia", "+216"))
    ..add(Country("Turkey", "+90"))
    ..add(Country("Turkmenistan", "+993"))
    ..add(Country("Tuvalu", "+688"))
    ..add(Country("U", "+688"))
    ..add(Country("Uganda", "+256"))
    ..add(Country("Ukraine", "+380"))
    ..add(Country("United Kingdom", "+44"))
    ..add(Country("United States", "+1"))
    ..add(Country("Uruguay", "+598"))
    ..add(Country("V", "+598"))
    ..add(Country("Vanuatu", "+678"))
    ..add(Country("Vatican", "+379"))
    ..add(Country("Venezuela", "+58"))
    ..add(Country("Vietnam", "+84"))
    ..add(Country("W", "+84"))
    ..add(Country("Wallis and Futuna", "+681"))
    ..add(Country("Western Sahara", "+212"))
    ..add(Country("Y", "+84"))
    ..add(Country("Yemen", "+967"))
    ..add(Country("Z", "+84"))
    ..add(Country("Zambia", "+260"))
    ..add(Country("Zimbabwe", "+263"));

  AnimationController animationController;
  Animation<double> animation;
  ScrollController scrollController;
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    );
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width;
    return SafeArea(
        child: Scaffold(

          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: width,
                    color: Color(0xff08527f),
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Text("Dictionary", style: TextStyle(color: Colors.white, fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:15.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.favorite,color: Colors.white,),
                              SizedBox(width: 10,),
                              Icon(Icons.search,color: Colors.white,)
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    color:  Color(0xffc55422),
                    child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.white,
                      tabs: <Widget>[
                        Tab(text: "All",),
                        Tab(text: "Acronyms",),
                        Tab(text: "Terms",)
                      ],
                      controller: _tabController,
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,

                    ),

                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: width,
                      height: 50,
                      color: Color(0xffe7e7e7),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30.0),
                            child: Text(
                              
                              "All",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "tcb"),
                            )),
                      )),
                  SizedBox(height: 10,),
                  Expanded(
                    child: CustomScrollView(controller: scrollController, slivers: <Widget>[

                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return ContactRowWidget(name: nameList[index].name);
                        }, childCount: nameList.length),
                      )
                    ]),
                  ),

                ],
              ),
              Container(

                margin: EdgeInsets.only(top: 90),
                child: QuickScrollBar(
                  nameList: nameList,
                  scrollController: scrollController,
                ),
              ),
            ],
          ),
         // floatingActionButton: GradientFab(animation: animation, vsync: this),
        ),

    );
  }

  scrollListener() {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

}
