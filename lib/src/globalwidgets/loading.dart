import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.5),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.60,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/loading.gif',
                        width: 60,
                        height: 60,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Loading ...",
                          style: Theme.of(context).textTheme.overline),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
