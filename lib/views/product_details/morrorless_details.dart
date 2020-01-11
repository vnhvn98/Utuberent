import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_watch_shop/global_widgets/custom_appbar.dart';
import 'package:flutter_watch_shop/models/cameramirrorless.dart';
import 'package:flutter_watch_shop/services/alert.service.dart';
import 'package:flutter_watch_shop/utils/colors.dart';

class MirrorlessDetailsPage extends StatefulWidget {
  final Mirrorless mirrorless;

  const MirrorlessDetailsPage({Key key, @required this.mirrorless}) : super(key: key);

  @override
  _MirrorlessDetailsPageState createState() => _MirrorlessDetailsPageState();
}

class _MirrorlessDetailsPageState extends State<MirrorlessDetailsPage> {
  int _selectedColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    ScreenUtil.instance = ScreenUtil(
      width: 388,
      height: 1600,
      allowFontScaling: true,
    )..init(context);

    final multiplier = screenHeight / screenWidth;

    final spacer = SizedBox(height: 10.0);

    final image = Hero(
      tag: widget.mirrorless.id,
      child: Image.asset(
        widget.mirrorless.photos[_selectedColorIndex],
        height: ScreenUtil().setHeight(400) * multiplier,
      ),
    );

    final name = Text(
      widget.mirrorless.name.toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
    );

    final brand = Text(
      widget.mirrorless.brand.toUpperCase(),
      style: TextStyle(fontSize: 14.0, color: Colors.grey),
    );

    final top = Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 50.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.scaffoldColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            name,
            spacer,
            brand,
            image
          ],
        ),
      ),
    );

    final bottom = Container(
      height: MediaQuery.of(context).size.height * 0.12, // 95.0
      color: Colors.white,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        )),
        onPressed: () {
          AlertService().showAlert(
            context: context,
            message: "${widget.mirrorless.name} has been added to cart.",
            type: AlertType.success,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Add To Cart - ",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            Text(
              "\$${widget.mirrorless.price.toString()}",
              style: TextStyle(fontSize: 22.0, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(isHome: false),
      body: Column(
        children: <Widget>[top, bottom],
      ),
    );
  }
}
