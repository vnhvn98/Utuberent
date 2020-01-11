import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/models/cameramirrorless.dart';
import 'package:flutter_watch_shop/router.dart' as router;
import 'package:flutter_watch_shop/utils/colors.dart';

class MirrorlessCard extends StatelessWidget {
  final Mirrorless mirrorless;

  const MirrorlessCard({Key key, @required this.mirrorless}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final spacer = SizedBox(height: 5.0);

    final image = Hero(tag: mirrorless.id, child: Image.asset(mirrorless.photos[0]));

    final name = Text(
      mirrorless.name.toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
      ),
    );

    final brand = Text(
      mirrorless.brand.toUpperCase(),
      style: TextStyle(fontSize: 11.0, color: Colors.grey),
    );

    final price = Text(
      "\$${mirrorless.price.toString()}",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0),
      child: MaterialButton(
        color: AppColors.primaryLightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        onPressed: () => Navigator.pushNamed(
            context, router.productDetailsViewRoute,
            arguments: mirrorless),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              image,
              spacer,
              name,
              spacer,
              spacer,
              brand,
              spacer,
              price
            ],
          ),
        ),
      ),
    );
  }
}
