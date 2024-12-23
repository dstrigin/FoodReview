%w[Кафе Ресторан Киоск Кофейня Пекарня Бар].each do |name|
  Type.create(name: name)
end

[ "Бар", "Русская кухня", "Стритфуд", "Азиатская кухня", "Итальянская кухня", "Кофе", "Выпечка", "Фюжн кухня", "Грузинская кухня" ].each do |name|
  Category.create(name: name)
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

Place.create(
  {
    name: "La Fabbrica",
    address: "Красноармейская, 168/99",
    description: "Итальянский ресторан с авторским меню от шеф-повара из Италии.",
    type_id: Type.find_by(name: "Ресторан")&.id,
    category_id: Category.find_by(name: "Итальянская кухня")&.id,
    pseudonym: "La_Fabbrica"
  }
)

Place.create(
  {
    name: "Раки и гады",
    address: "Шаумяна, 57",
    description: "Попробуйте донских раков по традиционным рецептам.",
    type_id: Type.find_by(name: "Ресторан")&.id,
    category_id: Category.find_by(name: "Бар")&.id,
    pseudonym: "Raki_i_Gady"
  }
)

Place.create(
  {
    name: "ОнегинДача",
    address: "просп. Чехова, 45Б",
    description: "Ресторан с классическими блюдами русской кухни и авторскими шедеврами.",
    type_id: Type.find_by(name: "Ресторан")&.id,
    category_id: Category.find_by(name: "Русская кухня")&.id,
    pseudonym: "OneginDacha"
  }
)

Place.create(
  {
    name: "Мясной бар «Корова»",
    address: "Красноармейская ул., 170, стр. 4",
    description: "Заведение с живой музыкой и вкусными мясными блюдами.",
    type_id: Type.find_by(name: "Ресторан")&.id,
    category_id: Category.find_by(name: "Бар")&.id,
    pseudonym: "Myasnoy_Bar"
  }
)

Place.create(
  {
    name: "Rooftop 39",
    address: "улица Шаумяна, 39",
    description: "Ресторан с панорамным видом и фьюжн-меню.",
    type_id: Type.find_by(name: "Ресторан")&.id,
    category_id: Category.find_by(name: "Фюжн кухня")&.id,
    pseudonym: "Rooftop_39"
  }
)

Place.create(
  {
    name: "Пури Пури",
    address: "Пушкинская, 121",
    description: "Семейное бистро с разнообразным меню и уютной атмосферой. Попробуйте их хинкали и шашлык.",
    type_id: Type.find_by(name: "Ресторан")&.id,
    category_id: Category.find_by(name: "Грузинская кухня")&.id,
    pseudonym: "Puri_Puri"
  }
)

Place.create(
  {
    name: "Осака",
    address: "Соборный пер., 30/58",
    description: "Ресторан японской кухни, предлагающий свежие суши и роллы. Идеальное место для любителей японской гастрономии.",
    type_id: Type.find_by(name: "Ресторан")&.id,
    category_id: Category.find_by(name: "Азиатская кухня")&.id,
    pseudonym: "Osaka"
  }
)

Place.create(
  {
    name: "Сицилия",
    address: "Будённовский просп., 29",
    description: "Итальянский ресторан, известный своими пастами и пиццей, приготовленными по традиционным рецептам.",
    type_id: Type.find_by(name: "Ресторан")&.id,
    category_id: Category.find_by(name: "Итальянская кухня")&.id,
    pseudonym: "Sicilia"
  }
)
