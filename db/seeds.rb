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
                 category_id: Category.find_by(name: "Азиатская кухня")&.id
               }
)
