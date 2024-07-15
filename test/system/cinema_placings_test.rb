require "application_system_test_case"

class CinemaPlacingsTest < ApplicationSystemTestCase
  setup do
    @cinema_placing = cinema_placings(:one)
  end

  test "visiting the index" do
    visit cinema_placings_url
    assert_selector "h1", text: "Cinema placings"
  end

  test "should create cinema placing" do
    visit cinema_placings_url
    click_on "New cinema placing"

    fill_in "Cinema", with: @cinema_placing.cinema_id
    fill_in "Movie detail", with: @cinema_placing.movie_detail_id
    fill_in "Time", with: @cinema_placing.time
    click_on "Create Cinema placing"

    assert_text "Cinema placing was successfully created"
    click_on "Back"
  end

  test "should update Cinema placing" do
    visit cinema_placing_url(@cinema_placing)
    click_on "Edit this cinema placing", match: :first

    fill_in "Cinema", with: @cinema_placing.cinema_id
    fill_in "Movie detail", with: @cinema_placing.movie_detail_id
    fill_in "Time", with: @cinema_placing.time
    click_on "Update Cinema placing"

    assert_text "Cinema placing was successfully updated"
    click_on "Back"
  end

  test "should destroy Cinema placing" do
    visit cinema_placing_url(@cinema_placing)
    click_on "Destroy this cinema placing", match: :first

    assert_text "Cinema placing was successfully destroyed"
  end
end
