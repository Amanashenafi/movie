require "test_helper"

class CinemaPlacementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema_placement = cinema_placements(:one)
  end

  test "should get index" do
    get cinema_placements_url
    assert_response :success
  end

  test "should get new" do
    get new_cinema_placement_url
    assert_response :success
  end

  test "should create cinema_placement" do
    assert_difference("CinemaPlacement.count") do
      post cinema_placements_url, params: { cinema_placement: { cinema_id: @cinema_placement.cinema_id, movie_id: @cinema_placement.movie_id, time_id: @cinema_placement.time_id } }
    end

    assert_redirected_to cinema_placement_url(CinemaPlacement.last)
  end

  test "should show cinema_placement" do
    get cinema_placement_url(@cinema_placement)
    assert_response :success
  end

  test "should get edit" do
    get edit_cinema_placement_url(@cinema_placement)
    assert_response :success
  end

  test "should update cinema_placement" do
    patch cinema_placement_url(@cinema_placement), params: { cinema_placement: { cinema_id: @cinema_placement.cinema_id, movie_id: @cinema_placement.movie_id, time_id: @cinema_placement.time_id } }
    assert_redirected_to cinema_placement_url(@cinema_placement)
  end

  test "should destroy cinema_placement" do
    assert_difference("CinemaPlacement.count", -1) do
      delete cinema_placement_url(@cinema_placement)
    end

    assert_redirected_to cinema_placements_url
  end
end
