import 'package:app_store/src/models/item_model.dart';

ItemModel banana = ItemModel(
  description: 'Banana Pacovan',
  imgUrl: 'assets/image/banana.jpg',
  itemName: 'Banana',
  price: 5.50,
  unit: 'kg',
);

ItemModel carne = ItemModel(
  description: 'Carne picanha',
  imgUrl: 'assets/image/carne.png',
  itemName: 'Picanha',
  price: 95.5,
  unit: 'kg',
);

ItemModel tomate = ItemModel(
  description: 'Tomate',
  imgUrl: 'assets/image/tomate.png',
  itemName: 'Tomate',
  price: 2.50,
  unit: 'kg',
);

ItemModel detergente = ItemModel(
  description: 'Detergente',
  imgUrl: 'assets/image/detergente.png',
  itemName: 'Detergente',
  price: 3.50,
  unit: 'kg',
);

ItemModel queijo = ItemModel(
  description: 'Queijo Coalho',
  imgUrl: 'assets/image/queijo.png',
  itemName: 'Queijo',
  price: 10.00,
  unit: 'kg',
);

ItemModel melancia = ItemModel(
  description: 'Melancia',
  imgUrl: 'assets/image/melancia.png',
  itemName: 'Melancia',
  price: 8.90,
  unit: 'kg',
);

List<ItemModel> items = [
  banana,
  melancia,
  queijo,
  detergente,
  tomate,
  carne,
];

  List<String> categories = [
    'Frutas',
    'Temperos',
    'Legumes',
    'Frios',
    'Carnes',
    'Laticíneos'
  ];
