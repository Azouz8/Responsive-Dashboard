import 'package:flutter_svg/flutter_svg.dart';

class UserInfoModel {
  final SvgPicture image;
  final String name;
  final String email;

   UserInfoModel({required this.image, required this.name, required this.email});
}
