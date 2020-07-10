import 'package:dio/dio.dart';
import 'package:simple_api_dart/card.dart';

class CardService {
  Dio dio =
      Dio(BaseOptions(baseUrl: 'https://api-cards-growdev.herokuapp.com'));

  Future<List<Card>> getAll() async {
    var response = await dio.get('/cards');
    var cards = <Card>[];

    print(response);
  }
}
