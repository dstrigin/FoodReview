require "test_helper"

class PlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get places_url
    assert_response :success
  end

  test "should get new" do
    get new_place_url
    assert_response :success
  end

  test "should create place" do
    category = categories(:one)
    type = types(:one)
    assert_difference("Place.count", 1) do
      post places_url, params: { place: { name: "у азиза", address: "Вымышленная, 13", description: "", category_id: category.id, type_id: type.id } }
    end

    assert_redirected_to place_url(Place.last)
  end

  test "should show place" do
    get place_url(@place)
    assert_response :success
  end

  test "should get edit" do
    get edit_place_url(@place)
    assert_response :success
  end

  test "should update place" do
    patch place_url(@place), params: { place: { name: "Новое имя", address: "Новый адрес", description: "Новое описание", category_id: categories(:one).id, type_id: types(:one).id } }
    assert_redirected_to place_url(@place)
    @place.reload
    assert_equal "Новое имя", @place.name
  end


  test "should destroy place" do
    assert_difference("Place.count", -1) do
      delete place_url(@place)
    end

    assert_redirected_to places_url
  end
end
