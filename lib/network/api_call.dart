import 'package:dio/dio.dart';
import 'package:karaoke/network/constant.dart';
import 'package:karaoke/network/response.dart';
import 'package:retrofit/http.dart';
part 'api_call.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class ApiCall {

  factory ApiCall(Dio dio) = _ApiCall;

  @GET(searchEndPoint)
  Future<ApiResponse> getVideo(
    @Query("key") String apiKey,
    @Query("order") String order,
    @Query("part") String part,
    @Query("maxResults") String maxResults, 
    @Query("q") String q,
  );
}
