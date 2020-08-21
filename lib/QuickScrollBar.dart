import 'package:flutter/material.dart';

import 'Model/CountryModel.dart';


class QuickScrollBar extends StatefulWidget {
  final List<Country> nameList;
  final ScrollController scrollController;

  QuickScrollBar({@required this.nameList,@required this.scrollController});

  @override
  _QuickScrollBarState createState() => _QuickScrollBarState(nameList,scrollController);
}

class _QuickScrollBarState extends State<QuickScrollBar> {
  double offsetContainer = 0.0;
  var scrollBarText;
  var scrollBarTextPrev;
  var scrollBarHeight;
  var contactRowSize = 70.0; //NOTE: size items
  var scrollBarMarginRight = 50.0;
  var scrollBarContainerHeight;
  var scrollBarPosSelected = 0;
  var scrollBarHeightDiff = 0.0;
  var screenHeight = 0.0;
  ScrollController scrollController;
  String scrollBarBubbleText = "";
  bool scrollBarBubbleVisibility = false;
  List<Country>  nameList;

  _QuickScrollBarState(this.nameList,this.scrollController);

  List alphabetList = [
    '#',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      scrollBarBubbleVisibility = true;
      print(offsetContainer);
      print(details);
      if ((offsetContainer + details.delta.dy) >= 0 &&
          (offsetContainer + details.delta.dy) <=
              (scrollBarContainerHeight - scrollBarHeight)) {
        offsetContainer += details.delta.dy;
        print(offsetContainer);
        scrollBarPosSelected =
            ((offsetContainer / scrollBarHeight) % alphabetList.length).round();
        print(scrollBarPosSelected);
        scrollBarText = alphabetList[scrollBarPosSelected];
        if (scrollBarText != scrollBarTextPrev) {
          for (var i = 0; i < nameList.length; i++) {
            print(scrollBarText.toString());
            if (scrollBarText
                .toString()
                .compareTo(nameList[i].name.toString().toUpperCase()[0]) ==
                0) {
              print(nameList[i].name);
              scrollController.jumpTo(i * contactRowSize);
              break;
            }
          }
          scrollBarTextPrev = scrollBarText;
        }
      }
    });
  }

  void _onVerticalDragStart(DragStartDetails details) {
    offsetContainer = details.globalPosition.dy - scrollBarHeightDiff;
    setState(() {
      scrollBarBubbleVisibility = true;
    });
  }

  getBubble() {
    if (!scrollBarBubbleVisibility) {
      return Container();
    }
    return Container(
      decoration:  BoxDecoration(
          color: Color(0xffc55422),
          borderRadius: BorderRadius.all(const Radius.circular(30.0))),
      width: 30,
      height: 30,
      child: Center(
        child: Text(
          "${scrollBarText ?? "${alphabetList.first}"}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }


  _getAlphabetItem(int index) {
    return Expanded(
      child: Container(
        width: 40,
        height: 20,
        alignment: Alignment.center,
        child: Text(
          alphabetList[index],
          style: (index == scrollBarPosSelected)
              ? TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Color(0xff2784c1))
              : TextStyle(fontSize: 10, fontWeight: FontWeight.w400,color: Color(0xff2784c1)),

        ),
      ),
    );
  }

  void _onVerticalEnd(DragEndDetails details) {
    setState(() {
      scrollBarBubbleVisibility = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return LayoutBuilder(builder: (context, constraints) {
      scrollBarHeightDiff = screenHeight - constraints.biggest.height;
      scrollBarHeight = (constraints.biggest.height) / alphabetList.length;
      scrollBarContainerHeight = (constraints.biggest.height); //NO
      return Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onVerticalDragEnd: _onVerticalEnd,
              onVerticalDragUpdate: _onVerticalDragUpdate,
              onVerticalDragStart: _onVerticalDragStart,
              child: Container(
                height: 350,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: []..addAll(
                    List.generate(
                        alphabetList.length, (index) => _getAlphabetItem(index)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: scrollBarMarginRight,
            top: offsetContainer,
            child: getBubble(),
          ),
        ],
      );
    });
  }
}