import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Inicio extends StatelessWidget {
  Inicio({
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
            Pin(start: 0.0, end: 100.0),
            child: SvgPicture.string(
              _svg_6qmthw,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 100.0, end: 0.0),
            child: SvgPicture.string(
              _svg_ni3jv3,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 114.0, middle: 0.2102),
            Pin(size: 100.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38.0),
                color: const Color(0xff3496b0),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 114.0, middle: 0.7898),
            Pin(size: 100.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34.0),
                color: const Color(0xff3496b0),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, end: 19.0),
            Pin(size: 73.0, middle: 0.7948),
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
            Pin(size: 56.0, end: 29.0),
            Pin(size: 56.0, middle: 0.7897),
            child:
                // Adobe XD layer: 'Icono - Volver a Ub…' (shape)
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
            Pin(size: 57.0, end: 10.0),
            Pin(size: 57.0, start: 15.0),
            child:
                // Adobe XD layer: 'Icono - Usuario' (shape)
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
            Pin(size: 62.0, middle: 0.2514),
            Pin(size: 62.0, end: 19.0),
            child:
                // Adobe XD layer: 'Icono - Ubicación' (shape)
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
            Pin(size: 72.0, middle: 0.7556),
            Pin(size: 72.0, end: 14.0),
            child:
                // Adobe XD layer: 'Icono - Recientes' (shape)
                Container(
              decoration: BoxDecoration(
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
const String _svg_6qmthw =
    '<svg viewBox="0.0 0.0 428.0 826.0" ><path transform="translate(0.0, 0.83)" d="M 0 -0.828061580657959 L 210.32763671875 -0.828061580657959 L 427.2797546386719 -0.828061580657959 L 428 825.1719360351562 L 0 825.1719360351562 L 0 -0.828061580657959 Z" fill="#13db63" fill-opacity="0.2" stroke="#707070" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ni3jv3 =
    '<svg viewBox="0.0 826.0 428.0 100.0" ><path transform="translate(0.0, 826.0)" d="M 0 0 L 428 0 L 428 100.0296630859375 L 0 100.0296630859375 L 0 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
