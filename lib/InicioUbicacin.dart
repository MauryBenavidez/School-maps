import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InicioUbicacin extends StatelessWidget {
  InicioUbicacin({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 74.0, start: 6.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37.0),
                color: const Color(0xff3e85c4),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.5012),
            Pin(size: 1.0, start: 28.0),
            child: SvgPicture.string(
              _svg_sfjq7q,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 283.8),
            child: SvgPicture.string(
              _svg_md27ie,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, end: 28.0),
            Pin(size: 73.0, middle: 0.6436),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xfffeffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, end: 12.0),
            Pin(size: 52.0, start: 17.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, start: 12.0),
            Pin(size: 52.0, start: 17.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.5),
            Pin(size: 44.0, start: 28.0),
            child: Text(
              'Busca aquí',
              style: TextStyle(
                fontFamily: 'HP Simplified',
                fontSize: 27,
                color: const Color(0xffffffff),
                height: 0.2962962962962963,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 131.0, middle: 0.8075),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 153.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, start: 61.0),
            Pin(size: 35.0, end: 13.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, middle: 0.7683),
            Pin(size: 35.0, end: 13.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: 28.0),
            Pin(size: 27.0, end: 112.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: 28.0),
            Pin(size: 19.0, end: 76.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 25.0, middle: 0.6501),
            Pin(size: 25.0, end: 18.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 25.0, middle: 0.1712),
            Pin(size: 25.0, end: 18.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.2446),
            Pin(size: 16.0, end: 21.0),
            child: Text(
              'Llamar',
              style: TextStyle(
                fontFamily: 'HP Simplified',
                fontSize: 12,
                color: const Color(0xff000000),
                height: 0.6666666666666666,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 61.0, middle: 0.782),
            Pin(size: 16.0, end: 21.0),
            child: Text(
              'Compartir',
              style: TextStyle(
                fontFamily: 'HP Simplified',
                fontSize: 12,
                color: const Color(0xff000000),
                height: 0.6666666666666666,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 144.0, middle: 0.5264),
            Pin(size: 1.0, end: 145.5),
            child: SvgPicture.string(
              _svg_7exr2o,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 53.0, end: 39.0),
            Pin(size: 53.0, middle: 0.6426),
            child:
                // Adobe XD layer: 'pngegg (1)' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 55.0, end: 12.0),
            Pin(size: 55.0, start: 16.0),
            child:
                // Adobe XD layer: 'klipartz.com' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.0, middle: 0.1728),
            Pin(size: 23.0, end: 19.0),
            child:
                // Adobe XD layer: 'klipartz.com (1)' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 25.0, middle: 0.6501),
            Pin(size: 25.0, end: 17.0),
            child:
                // Adobe XD layer: 'pngwing.com' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 53.0, end: 39.0),
            Pin(size: 53.0, middle: 0.6426),
            child:
                // Adobe XD layer: 'pngegg (1)' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_sfjq7q =
    '<svg viewBox="214.0 28.0 1.0 1.0" ><path transform="translate(209.0, 28.0)" d="M 5 0 L 5 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_md27ie =
    '<svg viewBox="0.0 0.0 428.0 642.2" ><path transform="translate(0.0, 0.83)" d="M 0 -0.828061580657959 L 210.32763671875 -0.828061580657959 L 427.2797546386719 -0.828061580657959 L 428 641.368408203125 L 0 641.368408203125 L 0 -0.828061580657959 Z" fill="#13db63" fill-opacity="0.2" stroke="#707070" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7exr2o =
    '<svg viewBox="149.5 779.5 144.0 1.0" ><path transform="translate(149.5, 779.5)" d="M 0 0 L 144 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
