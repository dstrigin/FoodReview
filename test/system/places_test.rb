require "application_system_test_case"

class PlacesTest < ApplicationSystemTestCase
  setup do
    @place = places(:one)
  end

  test "visiting the index" do
    visit places_url
    assert_selector "h2", text: "Заведения"
  end

  # test "should create place" do
  #   visit places_url
  #   click_on "Добавить заведение"
  #
  #   click_on "Create Place"
  #
  #   assert_text "Place was successfully created"
  #   click_on "Back"
  # end

  # test "should destroy Place" do
  #   visit place_url(@place)
  #   click_on "Destroy this place", match: :first
  #
  #   assert_no_text ""
  # end
end
