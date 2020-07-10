import 'package:dio/dio.dart';
import 'package:simple_api_dart/card.dart';

class CardService {
  Dio dio =
      Dio(BaseOptions(baseUrl: 'https://api-cards-growdev.herokuapp.com'));

  Future<List<Card>> getAll() async {
    var response = await dio.get('/cards');
    var cards = <Card>[];
    var responseList = response.data;

    responseList.forEach((card) => cards.add(Card.fromMap(card)));

    return cards;
  }

  Future<Card> getOne(String id) async {
    var response = await dio.get('/cards/$id');
    var responseData = response.data;

    var card = Card.fromMap(responseData);

    return card;
  }
}
