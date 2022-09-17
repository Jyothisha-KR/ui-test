import 'package:flutter/material.dart';
import 'package:ui/productDetails/details_screen.dart';

class CustomExpansionTile extends StatefulWidget {
  CustomExpansionTile({Key? key, required bool customTileExpanded,required this.title,required this.explanation, this. subtitle, })
      : _customTileExpanded = customTileExpanded,
        super(key: key);

  bool _customTileExpanded;
  String? title;
  String? subtitle;
  String? explanation;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.title.toString()),
      trailing: widget._customTileExpanded
          ? const Text('less')
          : Text(widget.subtitle.toString()),
      children: [
        Text(widget.explanation.toString())
      ],
      onExpansionChanged: (bool expanded) {
        setState(() {
          widget._customTileExpanded = expanded;
        });
      },
    );
  }
}