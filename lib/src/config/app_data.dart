import 'package:app_store/src/models/item_model.dart';

ItemModel creatina = ItemModel(
  description: 'Creatina',
  imgUrl: 'assets/image/creatina.png',
  itemName: 'Creatina',
  price: 105.50,
  unit: 'kg',
);

ItemModel whey = ItemModel(
  description: 'Proteina',
  imgUrl: 'assets/image/whey.png',
  itemName: 'Whey Protein',
  price: 100.00,
  unit: 'kg',
);

ItemModel gluta = ItemModel(
  description: 'Glutamina',
  imgUrl: 'assets/image/gluta.jpeg',
  itemName: 'Glutamina',
  price: 92.50,
  unit: 'kg',
);

ItemModel material = ItemModel(
  description: 'Material Esportivo',
  imgUrl: 'assets/image/corda.png',
  itemName: 'Corda de Pular',
  price: 39.90,
  unit: 'kg',
);

ItemModel bcaa = ItemModel(
  description: 'Bcaa',
  imgUrl: 'assets/image/bcaa.png',
  itemName: 'Bcaa',
  price: 70.00,
  unit: 'kg',
);

ItemModel energetico = ItemModel(
  description: 'Energetico',
  imgUrl: 'assets/image/monster.jpg',
  itemName: 'Monster',
  price: 8.90,
  unit: 'kg',
);

List<ItemModel> items = [
  creatina,
  whey,
  gluta,
  material,
  bcaa,
  energetico,
];

List<String> categories = [
  'Creatina',
  'Whey Protein',
  'Glutamina',
  'Materiais Esportivos',
  'Bcaa',
  'Energéticos'
];
