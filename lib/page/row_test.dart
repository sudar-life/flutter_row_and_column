import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_row_and_column/utils/options_constant.dart';

class RowTest extends StatefulWidget {
  RowTest({Key key}) : super(key: key);

  @override
  _RowTestState createState() => _RowTestState();
}

class _RowTestState extends State<RowTest> {
  MainAxisAlignment testMainAxisAlignment;
  CrossAxisAlignment testCrossAxisAlignment;
  MainAxisSize testMainAxisSize;
  TextDirection testTextDirection;
  VerticalDirection testVerticalDirection;

  MainAxisAlignment myMainAxisAlignment;
  CrossAxisAlignment myCrossAxisAlignment;
  MainAxisSize myMainAxisSize;
  TextDirection myTextDirection;
  VerticalDirection myVerticalDirection;

  List<Widget> childContainerList;
  @override
  void initState() {
    super.initState();
    testMainAxisAlignment = OptionsContant.mainAxisAlignments[
        Random().nextInt(OptionsContant.mainAxisAlignments.length)];
    testCrossAxisAlignment = OptionsContant.crossAxisAlignments[
        Random().nextInt(OptionsContant.crossAxisAlignments.length)];
    testMainAxisSize = OptionsContant
        .mainAxisSizes[Random().nextInt(OptionsContant.mainAxisSizes.length)];
    testTextDirection = OptionsContant
        .textDirections[Random().nextInt(OptionsContant.textDirections.length)];
    testVerticalDirection = OptionsContant.verticalDirection[
        Random().nextInt(OptionsContant.verticalDirection.length)];

    myMainAxisAlignment = MainAxisAlignment.start;
    myCrossAxisAlignment = CrossAxisAlignment.start;
    myMainAxisSize = MainAxisSize.min;
    myTextDirection = TextDirection.ltr;
    myVerticalDirection = VerticalDirection.up;
    makeSampleContainerBox();
  }

  void makeSampleContainerBox() {
    childContainerList = List.generate(
      3,
      (index) => Container(
        width: 40,
        height: 40,
        color: OptionsContant.colorList[index],
        child: Center(
          child: Text(
            (index + 1).toString(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ).toList();
  }

  Widget _mainAxisAlignmentOptionWidget() {
    return Column(
      children: [
        Text("MainAxisAlignment",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              OptionsContant.mainAxisAlignments.length,
              (index) => Container(
                  child: Row(
                children: [
                  Radio<MainAxisAlignment>(
                    value: OptionsContant.mainAxisAlignments[index],
                    groupValue: myMainAxisAlignment,
                    onChanged: (MainAxisAlignment value) {
                      setState(() {
                        myMainAxisAlignment = value;
                      });
                    },
                  ),
                  Text(OptionsContant.mainAxisAlignments[index]
                      .toString()
                      .split(".")[1]),
                ],
              )),
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget _crossAxisAlignmentOptionWidget() {
    return Column(
      children: [
        Text("CrossAxisAlignment",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              OptionsContant.crossAxisAlignments.length,
              (index) => Container(
                  child: Row(
                children: [
                  Radio<CrossAxisAlignment>(
                    value: OptionsContant.crossAxisAlignments[index],
                    groupValue: myCrossAxisAlignment,
                    onChanged: (CrossAxisAlignment value) {
                      setState(() {
                        myCrossAxisAlignment = value;
                      });
                    },
                  ),
                  Text(OptionsContant.crossAxisAlignments[index]
                      .toString()
                      .split(".")[1]),
                ],
              )),
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget _mainAxisSizeOptionWidget() {
    return Column(
      children: [
        Text("MainAxisSize",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              OptionsContant.mainAxisSizes.length,
              (index) => Container(
                  child: Row(
                children: [
                  Radio<MainAxisSize>(
                    value: OptionsContant.mainAxisSizes[index],
                    groupValue: myMainAxisSize,
                    onChanged: (MainAxisSize value) {
                      setState(() {
                        myMainAxisSize = value;
                      });
                    },
                  ),
                  Text(OptionsContant.mainAxisSizes[index]
                      .toString()
                      .split(".")[1]),
                ],
              )),
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget _textDirectionOptionsWidget() {
    return Column(
      children: [
        Text("TextDirection",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              OptionsContant.textDirections.length,
              (index) => Container(
                  child: Row(
                children: [
                  Radio<TextDirection>(
                    value: OptionsContant.textDirections[index],
                    groupValue: myTextDirection,
                    onChanged: (TextDirection value) {
                      setState(() {
                        myTextDirection = value;
                      });
                    },
                  ),
                  Text(OptionsContant.textDirections[index]
                      .toString()
                      .split(".")[1]),
                ],
              )),
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget _verticalDirectionOptionsWidget() {
    return Column(
      children: [
        Text("VerticalDirection",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              OptionsContant.textDirections.length,
              (index) => Container(
                  child: Row(
                children: [
                  Radio<VerticalDirection>(
                    value: OptionsContant.verticalDirection[index],
                    groupValue: myVerticalDirection,
                    onChanged: (VerticalDirection value) {
                      setState(() {
                        myVerticalDirection = value;
                      });
                    },
                  ),
                  Text(OptionsContant.verticalDirection[index]
                      .toString()
                      .split(".")[1]),
                ],
              )),
            ).toList(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row 위젯 고사"),
        actions: [
          FlatButton(
            child: Text("새 문제", style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => RowTest()),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.black.withOpacity(0.3),
              child: Row(
                mainAxisAlignment: testMainAxisAlignment,
                crossAxisAlignment: testCrossAxisAlignment,
                mainAxisSize: testMainAxisSize,
                textDirection: testTextDirection,
                verticalDirection: testVerticalDirection,
                children: childContainerList,
              ),
            ),
            SizedBox(height: 30),
            Container(height: 1, color: Colors.black.withOpacity(0.5)),
            SizedBox(height: 3),
            Container(height: 1, color: Colors.black.withOpacity(0.5)),
            SizedBox(height: 3),
            Container(height: 1, color: Colors.black.withOpacity(0.5)),
            SizedBox(height: 30),
            Container(
              height: 200,
              color: Colors.black.withOpacity(0.3),
              child: Row(
                mainAxisAlignment: myMainAxisAlignment,
                crossAxisAlignment: myCrossAxisAlignment,
                mainAxisSize: myMainAxisSize,
                textDirection: myTextDirection,
                verticalDirection: myVerticalDirection,
                children: childContainerList,
              ),
            ),
            SizedBox(height: 30),
            _mainAxisAlignmentOptionWidget(),
            _crossAxisAlignmentOptionWidget(),
            _mainAxisSizeOptionWidget(),
            _textDirectionOptionsWidget(),
            _verticalDirectionOptionsWidget(),
          ],
        ),
      ),
    );
  }
}
