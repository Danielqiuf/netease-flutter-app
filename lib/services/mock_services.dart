import 'package:flt_proj/models/banner/banner.model.dart';
import 'package:flt_proj/utils/common.util.dart';
import 'package:flt_proj/constans/service_json.dart';

class MockServices {
  static Future<CommonModelBanner> getDJBanner() async {
    return await CommonUtil.jsonDecoder(JsonServiceConstants.djBanner).then((value) {
      return CommonModelBanner.fromJson(value);
    });
  }
}