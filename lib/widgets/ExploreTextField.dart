import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class ExploreTextField extends StatefulWidget {
  final TextEditingController controller;
  final List<String> suggestions;
  final String hinttext;
  final String? svgIconPath;

  ExploreTextField({
    Key? key,
    required this.controller,
    required this.suggestions,
    required this.svgIconPath,
    required this.hinttext,
  }) : super(key: key);

  @override
  _ExploreTextFieldState createState() => _ExploreTextFieldState();
}

class _ExploreTextFieldState extends State<ExploreTextField> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  void _showSuggestions() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context)!.insert(_overlayEntry!);
  }

  void _hideSuggestions() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0.0, size.height + 5.0),
          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(10.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200), // Set max height
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: widget.suggestions.map((suggestion) {
                  return ListTile(
                    leading: widget.svgIconPath != null
                        ? SvgPicture.asset(widget.svgIconPath!, width: 24, height: 24)
                        : null,
                    title: Text(suggestion),
                    onTap: () {
                      widget.controller.text = suggestion;
                      _hideSuggestions(); // Hide suggestions after selection
                    },
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
                  hintText: widget.hinttext,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0.5,
                      color: Colors.grey, // Change this to your desired color
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: color2, // Change this to your desired color
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.expand_more),
                    onPressed: _showSuggestions,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _hideSuggestions();
    super.dispose();
  }
}
