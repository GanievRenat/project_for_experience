import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LikeButton extends StatefulWidget {
  LikeButton(this.isLiked, {Key key}) : super(key: key);

  final bool isLiked;

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLiked = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.heart,
                  size: isLiked ? 30 : 25,
                  color: isLiked ? Colors.pink : Colors.white,
                ),
                FaIcon(
                  (isLiked) ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
                  size: isLiked ? 30 : 25,
                  color: isLiked ? Colors.pink : Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
