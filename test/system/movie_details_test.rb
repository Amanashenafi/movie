require "application_system_test_case"

class MovieDetailsTest < ApplicationSystemTestCase
  setup do
    @movie_detail = movie_details(:one)
  end

  test "visiting the index" do
    visit movie_details_url
    assert_selector "h1", text: "Movie details"
  end

  test "should create movie detail" do
    visit movie_details_url
    click_on "New movie detail"

    fill_in "Genre", with: @movie_detail.genre
    fill_in "Production year", with: @movie_detail.production_year
    fill_in "Rating", with: @movie_detail.rating
    fill_in "Title", with: @movie_detail.title
    click_on "Create Movie detail"

    assert_text "Movie detail was successfully created"
    click_on "Back"
  end

  test "should update Movie detail" do
    visit movie_detail_url(@movie_detail)
    click_on "Edit this movie detail", match: :first

    fill_in "Genre", with: @movie_detail.genre
    fill_in "Production year", with: @movie_detail.production_year
    fill_in "Rating", with: @movie_detail.rating
    fill_in "Title", with: @movie_detail.title
    click_on "Update Movie detail"

    assert_text "Movie detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie detail" do
    visit movie_detail_url(@movie_detail)
    click_on "Destroy this movie detail", match: :first

    assert_text "Movie detail was successfully destroyed"
  end
end
