require "application_system_test_case"

class CinemaPlacementsTest < ApplicationSystemTestCase
  setup do
    @cinema_placement = cinema_placements(:one)
  end

  test "visiting the index" do
    visit cinema_placements_url
    assert_selector "h1", text: "Cinema placements"
  end

  test "should create cinema placement" do
    visit cinema_placements_url
    click_on "New cinema placement"

    fill_in "Cinema", with: @cinema_placement.cinema_id
    fill_in "Movie", with: @cinema_placement.movie_id
    fill_in "Time", with: @cinema_placement.time_id
    click_on "Create Cinema placement"

    assert_text "Cinema placement was successfully created"
    click_on "Back"
  end

  test "should update Cinema placement" do
    visit cinema_placement_url(@cinema_placement)
    click_on "Edit this cinema placement", match: :first

    fill_in "Cinema", with: @cinema_placement.cinema_id
    fill_in "Movie", with: @cinema_placement.movie_id
    fill_in "Time", with: @cinema_placement.time_id
    click_on "Update Cinema placement"

    assert_text "Cinema placement was successfully updated"
    click_on "Back"
  end

  test "should destroy Cinema placement" do
    visit cinema_placement_url(@cinema_placement)
    click_on "Destroy this cinema placement", match: :first

    assert_text "Cinema placement was successfully destroyed"
  end
end
