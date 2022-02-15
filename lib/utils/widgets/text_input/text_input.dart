import 'package:flutter/material.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';

class CustomTextInput extends StatelessWidget {
  String _texto;

  CustomTextInput(this._texto);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _texto,
            style: Theme.of(context).textTheme.headline2,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.hm),
          ),
          SizedBox(
            height: 6.7.hm,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  // hintText: "Email",
                  fillColor: Colors.white70),
            ),
          )
        ],
      );
    });
  }
}
