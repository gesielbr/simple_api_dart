import 'dart:io';
import 'package:simple_api_dart/card.dart';
import 'package:simple_api_dart/services/card_service.dart';

void main() async {
  var exit = false;
  var option = 0;
  var service = CardService();

  print('-----------SIMPLE API DART-----------');

  while (!exit) {
    option = selectOption();

    switch (option) {
      case 1:
        print('Ver todos cards');
        var cards = await service.getAll();
        for (var card in cards) {
          print(card.toString());
          print('----------------');
        }
        break;

      case 2:
        print('Buscar um card');
        break;

      case 3:
        print('Criar card');
        break;

      case 4:
        print('Atualizar card');
        break;

      case 5:
        print('Deletar card');
        break;

      case 6:
        print('Sair do Programa');
        exit = true;
        break;

      default:
        print('Opcao selecionada invalida');
        break;
    }
  }
}

int selectOption() {
  print('-----------ESCOLHA UMA OPCAO-----------');
  var optionSelected = int.tryParse(stdin.readLineSync()) ?? 0;

  return optionSelected;
}
