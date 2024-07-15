module ApplicationHelper
  def days_of_week_options
    %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]
  end
  def available_slots(id)
    movie_detail = MovieDetail.find_by(id: id)
    title = movie_detail.title if movie_detail
    arr = []
    schedules = MovieDetail.where(title: title)
  end
end
