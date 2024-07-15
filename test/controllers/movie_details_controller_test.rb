require "test_helper"

class MovieDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_detail = movie_details(:one)
  end

  test "should get index" do
    get movie_details_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_detail_url
    assert_response :success
  end

  test "should create movie_detail" do
    assert_difference("MovieDetail.count") do
      post movie_details_url, params: { movie_detail: { genre: @movie_detail.genre, production_year: @movie_detail.production_year, rating: @movie_detail.rating, title: @movie_detail.title } }
    end

    assert_redirected_to movie_detail_url(MovieDetail.last)
  end

  test "should show movie_detail" do
    get movie_detail_url(@movie_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_detail_url(@movie_detail)
    assert_response :success
  end

  test "should update movie_detail" do
    patch movie_detail_url(@movie_detail), params: { movie_detail: { genre: @movie_detail.genre, production_year: @movie_detail.production_year, rating: @movie_detail.rating, title: @movie_detail.title } }
    assert_redirected_to movie_detail_url(@movie_detail)
  end

  test "should destroy movie_detail" do
    assert_difference("MovieDetail.count", -1) do
      delete movie_detail_url(@movie_detail)
    end

    assert_redirected_to movie_details_url
  end
end
