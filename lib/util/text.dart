// import 'package:flutter/widgets.dart';
// import 'package:siara_mobile/src/colors.dart';

// Text kNormalText({
//   @required String? text,
//   double size = 14,
//   bool siaraColor = false,
//   TextAlign align = TextAlign.left,
//   FontWeight? fontWeight,
// }) {
//   return Text(
//     text!,
//     textAlign: align,
//     // overflow: TextOverflow.,
//     softWrap: true,
//     style: TextStyle(
//         color: siaraColor ? kColorMainPrimary : kColorTexxtPrimary,
//         fontSize: size,
//         fontWeight: fontWeight),
//   );
// }

// Text kdefaultText({
//   @required String? text,
//   double? size,
//   TextAlign align = TextAlign.left,
//   FontWeight? weight,
//   Color? color,
// }) {
//   return Text(
//     text!,
//     textAlign: align,
//     // overflow: TextOverflow.,
//     softWrap: true,
//     style: TextStyle(
//       color: color,
//       fontSize: size,
//       fontWeight: weight,
//     ),
//   );
// }

// Text ksubText({
//   @required String? text,
//   double size = 14,
//   TextAlign align = TextAlign.left,
//   FontWeight? weight,
// }) {
//   return Text(
//     text!,
//     textAlign: align,
//     // overflow: TextOverflow.,
//     softWrap: true,
//     style: TextStyle(
//       color: kColorTexxtPrimary,
//       fontSize: size,
//       fontWeight: weight,
//     ),
//   );
// }

// Text kBoldText({
//   @required String? text,
//   Key? key,
//   double size = 16,
//   fontWeight = FontWeight.w700,
//   TextAlign align = TextAlign.left,
//   bool siaraBlue = false,
// }) {
//   return Text(
//     text!,
//     key: key,
//     textAlign: align,
//     // maxLines: maxLine,
//     // overflow: overflow,
//     style: TextStyle(
//       color: siaraBlue ? kColorMainPrimary : kColorTexxtPrimary,
//       fontSize: size,
//       fontWeight: fontWeight,
//     ),
//   );
// }

// Widget roundBag({double size = 11, Color? color, Widget? child}) {
//   color ??= kColorMainPrimary;
//   return Container(
//     width: size,
//     height: size,
//     decoration: BoxDecoration(shape: BoxShape.circle, color: color),
//     child: child,
//   );
// }
