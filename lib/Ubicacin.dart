import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ubicacin extends StatelessWidget {
  Ubicacin({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
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
            Pin(size: 205.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, start: 12.0),
            Pin(size: 52.0, start: 12.0),
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
            Pin(size: 54.0, end: 7.0),
            Pin(size: 52.0, start: 12.0),
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 82.0, middle: 0.2429),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 66.0, middle: 0.5),
            Pin(size: 1.0, middle: 0.2297),
            child: SvgPicture.string(
              _svg_sbtuck,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 329.0, start: 7.0),
            Pin(size: 21.0, middle: 0.2486),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, end: 7.0),
            Pin(size: 52.0, middle: 0.2437),
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
            Pin(size: 174.0, start: 7.0),
            Pin(size: 23.0, middle: 0.2802),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 52.0, middle: 0.3284),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 110.0, start: 20.0),
            Pin(size: 30.0, middle: 0.3326),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.5),
            Pin(size: 30.0, middle: 0.3326),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 110.0, end: 20.0),
            Pin(size: 30.0, middle: 0.3326),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 82.0, start: 34.0),
            Pin(size: 16.0, middle: 0.3363),
            child: Text(
              'INFORMACIÓN',
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
            Pin(size: 75.0, middle: 0.5014),
            Pin(size: 16.0, middle: 0.3363),
            child: Text(
              'FOTOS',
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
            Pin(size: 70.0, end: 40.0),
            Pin(size: 16.0, middle: 0.3363),
            child: Text(
              'ACERCA DE',
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
            Pin(start: -1.0, end: 1.0),
            Pin(size: 110.0, middle: 0.4154),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 29.0),
            Pin(size: 1.0, middle: 0.4119),
            child: SvgPicture.string(
              _svg_6mupeg,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.2038),
            Pin(size: 16.0, middle: 0.456),
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
            Pin(size: 61.0, middle: 0.733),
            Pin(size: 16.0, middle: 0.4571),
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
            Pin(size: 54.0, middle: 0.2112),
            Pin(size: 52.0, middle: 0.405),
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
            Pin(size: 54.0, middle: 0.7246),
            Pin(size: 52.0, middle: 0.4085),
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 71.0, middle: 0.5251),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 71.0, middle: 0.6082),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 71.0, middle: 0.6854),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, start: 15.0),
            Pin(size: 52.0, middle: 0.5252),
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
            Pin(size: 54.0, start: 15.0),
            Pin(size: 52.0, middle: 0.603),
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
            Pin(size: 54.0, start: 15.0),
            Pin(size: 52.0, middle: 0.6842),
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
            Pin(size: 297.0, end: 27.0),
            Pin(size: 22.0, middle: 0.5243),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 297.0, end: 25.0),
            Pin(size: 22.0, middle: 0.5996),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 297.0, end: 25.0),
            Pin(size: 22.0, middle: 0.6759),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 55.0, end: 7.0),
            Pin(size: 55.0, start: 11.0),
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
            Pin(size: 54.0, middle: 0.2112),
            Pin(size: 54.0, middle: 0.4072),
            child: Transform.rotate(
              angle: -0.0349,
              child:
                  // Adobe XD layer: 'klipartz.com (1)' (shape)
                  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 52.0, middle: 0.7234),
            Pin(size: 52.0, middle: 0.4085),
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
            Pin(size: 53.0, start: 15.0),
            Pin(size: 53.0, middle: 0.5235),
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
            Pin(size: 44.0, start: 20.0),
            Pin(size: 44.0, middle: 0.6825),
            child:
                // Adobe XD layer: 'klipartz.com (2)' (shape)
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
            Pin(size: 55.0, start: 14.0),
            Pin(size: 55.0, middle: 0.6028),
            child:
                // Adobe XD layer: 'kisspng-clock-compu…' (shape)
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
const String _svg_sbtuck =
    '<svg viewBox="181.0 212.5 66.0 1.0" ><path transform="translate(181.0, 212.5)" d="M 0 0 L 66 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6mupeg =
    '<svg viewBox="27.0 381.0 372.0 1.0" ><path transform="translate(27.0, 354.0)" d="M 372 27 L 0 27 L 372 27 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
