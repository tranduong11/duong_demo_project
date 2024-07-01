import 'package:project_demo/models/response/users.dart';
import 'package:project_demo/repository/api_path.dart';
import 'package:project_demo/repository/logger.dart';

import 'app_client.dart';

class AppRepository {
  /// phương thức GET thường và không có tham số
  /// Future<Population?> getDataUSD(String id) async {
  // Future<UnknownRes?> getDataUSD() async {
  //   try {
  //     final res = await AppClient.instance.dio.get(
  //       ApiPath.currentprice,
  //     );
  //     UnknownRes? response = UnknownRes.fromJson(res.data);
  //     return response;
  //   } catch (e) {
  //     logger.e(e);
  //     return UnknownRes();
  //   }
  // }

  /// phương thức GET truyền thẳng id vào url => /api/users/2
  Future<Users?> getDataUSD({required String id}) async {
    try {
      final res = await AppClient.instance.dio.get('${ApiPath.baseURl}$id');
      if (res.data != null) {
        Users? response = Users.fromJson(res.data);
        return response;
      }

      return null;
    } catch (e) {
      logger.e(e);
      return null;
    }
  }

  /// phương thức GET truyền thẳng id vào url => /api/users/2
  // Future<Users?> postDataUSD({required IdBody id}) async {
  //   try {
  //     final res = await AppClient.instance.dio.post('${ApiPath.users}', data: id.toJson());
  //     if (res.data != null) {
  //       Users? response = Users.fromJson(res.data);
  //       return response;
  //     }
  //     return null;
  //   } catch (e) {
  //     logger.e(e);
  //     return null;
  //   }
  // }

  /// phương thức GET truyền queryParameters  => /api/users?page=2
// Future<Users?> getDataUSDQuery(String id) async {
//   try {
//     final res = await AppClient.instance.dio.get(
//       ApiPath.currentprice,
//       queryParameters: {"id": 1, "page": 12},
//     );
//     Users? response = Users.fromJson(res.data);
//     return response;
//   } catch (e) {
//     logger.e(e);
//     return Users();
//   }
// }
//
// /// phương thức POST ko có data => /api/users
// Future<Population?> getDataUSDPOST() async {
//   try {
//     final res = await AppClient.instance.dio.post(ApiPath.currentprice2);
//     Population? response = Population.fromJson(res.data);
//     return response;
//   } catch (e) {
//     logger.e(e);
//     return Population();
//   }
// }
//
// /// phương thức POST có data => /api/users
// Future<Population?> getDataUSDPOSTData(String id) async {
//   try {
//     final res = await AppClient.instance.dio.post(
//       ApiPath.currentprice,
//       data: {
//         'id': id,
//       },
//     );
//     Population? response = Population.fromJson(res.data);
//     return response;
//   } catch (e) {
//     logger.e(e);
//     return Population();
//   }
// }
//
// /// phương thức POST có data => /api/users
// /// {
// ///     "name": "morpheus",
// ///     "job": "leader"
// /// }
// Future<Population?> getDataUSDPOSTData1(BodyCreate1 population) async {
//   try {
//     final res = await AppClient.instance.dio.post(
//       ApiPath.currentpric1e,
//       data: population.toJson(),
//     );
//     Population? response = Population.fromJson(res.data);
//     return response;
//   } catch (e) {
//     logger.e(e);
//     return Population();
//   }
// }

  /// PUT cách làm y hệt POST khác mỗi tên phương thức.
  /// DELETE cách làm y hệt GET khác mỗi tên phương thức.
}
