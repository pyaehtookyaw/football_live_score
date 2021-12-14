// import 'package:flutter/material.dart';

// class CurrencyRate extends StatefulWidget {
//   final String currency, rate, name;
//   CurrencyRate({Key key, this.currency, this.rate, this.name})
//       : super(key: key);

//   @override
//   _CurrencyRateState createState() => _CurrencyRateState();
// }

// class _CurrencyRateState extends State<CurrencyRate> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.grey[50],
//       child: Container(
//         padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   widget.currency.toString(),
//                   style: Theme.of(context).textTheme.headline3,
//                 ),
//                 Icon(
//                   Icons.arrow_right_alt_rounded,
//                 ),
//                 Text(
//                   widget.rate.toString(),
//                   style: Theme.of(context).textTheme.headline3,
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 7,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   widget.name.toString(),
//                   style: Theme.of(context).textTheme.headline4,
//                 ),
//                 Text(
//                   "MMK",
//                   style: Theme.of(context).textTheme.headline4,
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
