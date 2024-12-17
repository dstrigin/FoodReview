require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category1 = categories(:one)
    @category2 = categories(:two)
  end

  test "categories are listed" do
    visit categories_url

    assert_text @category1.name
    assert_text @category2.name
  end

  test "no categories displays a message" do
    Category.delete_all

    visit categories_url

    assert_text "Категорий заведений пока нет"
  end
end
