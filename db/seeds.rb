[ "Кафе", "Ресторан", "Киоск", "Кофейня", "Пекарня" ].each do |name|
  Type.create name: name
end

[ "Стритфуд", "Азиатская кухня", "Итальянская кухня", "Кофе", "Выпечка" ].each do |name|
  Category.create name: name
end

Place.create(
  {
    name: "Pad Thai",
    address: "Пушкинская, 213/106",
    description: "Пожалуй, самый известный ресторан азиатской кухни в городе. Вы будете без ума от этого том яма.",
    type_id: Type.find_by(name: "Ресторан")&.id,
    category_id: Category.find_by(name: "Азиатская кухня")&.id,
    pseudonym: "Pad_Thai"
  }
)

Place.create(
  {
    name: "Кекс",
    address: "Коммунистический, 36/4 (парк Сказка)",
    description: "Уютная кофейня с большим ассортиментом. Вы точно найдете, чем согреться",
    type_id: Type.find_by(name: "Кофейня")&.id,
    category_id: Category.find_by(name: "Кофе")&.id,
    pseudonym: "Keks"
  }
)

Place.create(
  {
    name: "Kikchak",
    address: "Соборный 17/53",
    description: "Восхваленная многими ростовчанами шаурма. Не оставайтесь в стороне и попробуйте",
    type_id: Type.find_by(name: "Кафе")&.id,
    category_id: Category.find_by(name: "Стритфуд")&.id,
    pseudonym: "Kikchak"
  }
)
