import 'package:flutter/material.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';

class PromoCard extends StatelessWidget {
  final String _title;
  final String _description;
  const PromoCard(this._title,this._description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: .9.w,
      height: 15.hm,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Text(_title),
            Padding(
              padding: EdgeInsets.only(bottom: 1.hm),
            ),
            Text(_description)
          ],
        ),
      ),
    );
  }
}
