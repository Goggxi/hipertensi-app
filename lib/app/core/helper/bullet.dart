import 'package:flutter/material.dart';

import 'constant.dart';

class UnorderedList extends StatelessWidget {
  UnorderedList(this.texts);
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• ",
            style: kSubTextStyle.copyWith(
                color: kPrimaryColor, fontWeight: FontWeight.bold)),
        Expanded(
          child: Text(text, style: kSubTextStyle),
        ),
      ],
    );
  }
}

class NumberList extends StatelessWidget {
  NumberList(this.texts);
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    var i = 1;
    for (var text in texts) {
      // Add list item
      widgetList.add(NumberListItem(text, i));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
      i++;
    }

    return Column(children: widgetList);
  }
}

class NumberListItem extends StatelessWidget {
  NumberListItem(this.text, this.numb);
  final String text;
  final int numb;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(numb.toString() + ". ",
            style: kSubTextStyle.copyWith(
                color: kPrimaryColor, fontWeight: FontWeight.normal)),
        Expanded(
          child: Text(text, style: kSubTextStyle),
        ),
      ],
    );
  }
}
