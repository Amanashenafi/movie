require "application_system_test_case"

class CinemasTest < ApplicationSystemTestCase
  setup do
    @cinema = cinemas(:one)
  end

  test "visiting the index" do
    visit cinemas_url
    assert_selector "h1", text: "Cinemas"
  end

  test "should create cinema" do
    visit cinemas_url
    click_on "New cinema"

    fill_in "Location", with: @cinema.location
    fill_in "Name", with: @cinema.name
    fill_in "Size", with: @cinema.size
    click_on "Create Cinema"

    assert_text "Cinema was successfully created"
    click_on "Back"
  end

  test "should update Cinema" do
    visit cinema_url(@cinema)
    click_on "Edit this cinema", match: :first

    fill_in "Location", with: @cinema.location
    fill_in "Name", with: @cinema.name
    fill_in "Size", with: @cinema.size
    click_on "Update Cinema"

    assert_text "Cinema was successfully updated"
    click_on "Back"
  end

  test "should destroy Cinema" do
    visit cinema_url(@cinema)
    click_on "Destroy this cinema", match: :first

    assert_text "Cinema was successfully destroyed"
  end
end
