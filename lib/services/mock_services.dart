import 'package:flt_proj/app/routes/home/models/home.model.dart';
import 'package:flt_proj/utils/common.util.dart';
import 'package:flt_proj/constans/service_json.dart';

class MockServices {
  static Future<ExternalBanner> getDJBanner() async {
    return await CommonUtil.jsonDecoder(JsonServiceConstants.djBanner)
        .then((value) {
      return ExternalBanner.fromJson(value);
    });
  }

  static Future<MusicWrap> getHomeDataSource() async {
    return await CommonUtil.jsonDecoder(JsonServiceConstants.discorverBlockPage)
        .then((value) => MusicWrap.fromJson(value));
  }
}
