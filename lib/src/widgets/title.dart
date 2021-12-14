import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TitleText extends StatelessWidget {
  final String date;
  TitleText({Key key, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Last updated:",
                    style: Theme.of(context).textTheme.headline1),
                Text(date,
                    // DateFormat('dd-MM-yyyy hh:mm a').format(date
                    //     // new DateTime.fromMillisecondsSinceEpoch(
                    //     //     date ?? 1558432747 * 1000)
                    //     ),
                    style: Theme.of(context).textTheme.headline1)
              ],
            ),
            // SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("CURRENCY", style: Theme.of(context).textTheme.headline2),
            //     Text("RATES", style: Theme.of(context).textTheme.headline2)
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
