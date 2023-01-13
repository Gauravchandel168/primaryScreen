import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/colors/app_colors.dart';
import '../../../../core/constants/assets_base_path.dart';
import '../../../../core/constants/font_weights.dart';

class PrimaryListDataWidget extends StatefulWidget {
  const PrimaryListDataWidget({Key? key}) : super(key: key);

  @override
  State<PrimaryListDataWidget> createState() => _PrimaryListDataWidgetState();
}

class _PrimaryListDataWidgetState extends State<PrimaryListDataWidget> {
  List items = ["Option 1", "Option 2", "Option 3"];
  Object? selectedValue = "Option 1";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Depth From',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: normal,
                        color: black333333Color),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  "Depth To",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: normal,
                      color: black333333Color),
                ),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                child: Container(
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          color: black000000Color.withOpacity(0.1),
                          // spreadRadius: 2.0,

                          offset: Offset(
                              0.0, // Move to right 7.0 horizontally
                              2.0))
                    ],
                  ),
                  child: Card(
                    //shadowColor:black000000Color.withOpacity(0.1),
                    elevation: 3,
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Row(
                          children: const [
                            Expanded(
                                child: Text(
                              "Select ",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: normal,
                                  color: white666666Color),
                            )),
                            Icon(
                              CupertinoIcons.chevron_down,
                              size: 14,
                              color: black000000Color,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  _cupertinoPopUp();
                },
              )),
              Expanded(
                  child: InkWell(
                child: Container(
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          color: black000000Color.withOpacity(0.1),
                          // spreadRadius: 2.0,

                          offset: Offset(
                              0.0, // Move to right 7.0 horizontally
                              2.0)
                          // new BoxShadow(
                          //   offset: Offset(0.5,0.5),
                          //   color: black000000Color.withOpacity(0.1),
                          //   blurRadius: 5.0,
                          //
                          ),
                    ],
                  ),
                  child: Card(
                    elevation: 3,
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Row(
                          children: const [
                            Expanded(
                                child: Text(
                              "Select ",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: normal,
                                  color: white666666Color),
                            )),
                            Icon(
                              color: black000000Color,
                              CupertinoIcons.chevron_down,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  _cupertinoPopUp();
                },
              )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          _alignText(
            "Group",
          ),
          _generateDropDownButton(),
          SizedBox(
            height: 10.0,
          ),
          _alignText("Plasticity"),
          _generateDropDownButton(),
          SizedBox(
            height: 10.0,
          ),
          _alignText("Colour"),
          _generateDropDownButton(),
          SizedBox(
            height: 10.0,
          ),
          _alignText("Moisture"),
          _generateDropDownButton(),
          SizedBox(
            height: 10.0,
          ),
          _alignText("Consistency"),
          _generateDropDownButton(),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "$svgAssetsBasePath/icon3.svg",
                height: 17,
                width: 17,
              ),
              SizedBox(
                width: 4,
              ),
              const Text(
                "Add another depth",
                style: TextStyle(
                    fontSize: 9, color: blue081E3DColor, fontWeight: normal),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [Color(0xFF081E3D), Color(0xFF0056D0)])),
              child: const Center(
                child: Text(
                  "Create PDF",
                  style: TextStyle(color: whiteFFFFFFColor, fontWeight: normal),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _generateDropDownButton() {
    return Container(
      decoration: new BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              blurRadius: 10.0,
              color: black000000Color.withOpacity(0.1),
              // spreadRadius: 2.0,
              offset: Offset(
                  0.0, // Move to right 7.0 horizontally
                  2.0))
        ],
      ),
      child: Card(
        clipBehavior:Clip.antiAlias,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: const Text("Select"),
              value: selectedValue,
              isExpanded: true,
              icon: const Icon(
                color: black000000Color,
                CupertinoIcons.chevron_down,
                size: 14,
              ),
              items: items
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: medium,
                              color: black333333Color),
                        ),
                      ))
                  .toList(),
              onChanged: (value) {
                return setState(() {
                  selectedValue = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _alignText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(
                fontSize: 11, fontWeight: normal, color: white666666Color),
          )),
    );
  }

  _cupertinoPopUp() {
    List<Widget> list = List.generate(30, (index) => Text("${index * 10}cm"));
    return showCupertinoModalPopup<void>(
        context: context,
        builder: (context) => Container(
              color: whiteFFFFFFColor,
              height: 200,
              child: CupertinoPicker(
                itemExtent: 30,
                onSelectedItemChanged: (int value) {},
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: list,
              ),
            ));
  }
}
