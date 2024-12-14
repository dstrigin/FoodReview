[ "Кафе", "Ресторан", "Киоск", "Кофейня", "Пекарня" ].each do |name|
  Type.create name: name
end

[ "Стритфуд", "Азиатская кухня", "Итальянская кухня", "Кофе", "Выпечка" ].each do |name|
  Category.create name: name
end
