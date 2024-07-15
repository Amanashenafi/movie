require "application_system_test_case"

class OrderingsTest < ApplicationSystemTestCase
  setup do
    @ordering = orderings(:one)
  end

  test "visiting the index" do
    visit orderings_url
    assert_selector "h1", text: "Orderings"
  end

  test "should create ordering" do
    visit orderings_url
    click_on "New ordering"

    fill_in "Cinema placing", with: @ordering.cinema_placing_id
    fill_in "Movie detail", with: @ordering.movie_detail_id
    click_on "Create Ordering"

    assert_text "Ordering was successfully created"
    click_on "Back"
  end

  test "should update Ordering" do
    visit ordering_url(@ordering)
    click_on "Edit this ordering", match: :first

    fill_in "Cinema placing", with: @ordering.cinema_placing_id
    fill_in "Movie detail", with: @ordering.movie_detail_id
    click_on "Update Ordering"

    assert_text "Ordering was successfully updated"
    click_on "Back"
  end

  test "should destroy Ordering" do
    visit ordering_url(@ordering)
    click_on "Destroy this ordering", match: :first

    assert_text "Ordering was successfully destroyed"
  end
end
