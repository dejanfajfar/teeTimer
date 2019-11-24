import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tee_timer/models/brewModel.dart';
import 'package:tee_timer/models/teeData.dart';


// ignore: must_be_immutable
class Tee extends StatelessWidget {
  TeeData data;

  Tee(TeeData data) {
    this.data = data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 21 / 9,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.center,
                      image: AssetImage(this.data.imageAsset),
                    )
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 21 / 9,
              child: Container(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: FractionalOffset.bottomCenter,
                            end: FractionalOffset.center,
                            colors: [
                              Colors.black45,
                              Colors.transparent
                            ]
                        )
                    ),
                  )
              ),
            ),
            AspectRatio(
              aspectRatio: 21 / 9,
              child: Container(
                margin: EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    this.data.name,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 21 / 9,
              child: Container(
                margin: EdgeInsets.all(5),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                      opacity: 0.3,
                      child: Text(
                        this.data.brewTime.toString(),
                        style: TextStyle(
                            fontSize: 100,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 21 / 9,
              child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => {
                        Provider.of<BrewModel>(context, listen: false).brew(this.data)
                      },
                    ),
                  )
              ),
            ),
          ],
        )
    );
  }
}