class CinemaPlacingsController < ApplicationController
  before_action :set_cinema_placing, only: %i[ show edit update destroy ]

  # GET /cinema_placings or /cinema_placings.json
  def index
    @cinema_placings = CinemaPlacing.all
  end

  # GET /cinema_placings/1 or /cinema_placings/1.json
  def show
  end

  # GET /cinema_placings/new
  def new
    @cinema_placing = CinemaPlacing.new
  end

  # GET /cinema_placings/1/edit
  def edit
  end

  # POST /cinema_placings or /cinema_placings.json
  def create
    @cinema_placing = CinemaPlacing.new(cinema_placing_params)

    respond_to do |format|
      if @cinema_placing.save
        format.html { redirect_to cinema_placing_url(@cinema_placing), notice: "Cinema placing was successfully created." }
        format.json { render :show, status: :created, location: @cinema_placing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cinema_placing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cinema_placings/1 or /cinema_placings/1.json
  def update
    respond_to do |format|
      if @cinema_placing.update(cinema_placing_params)
        format.html { redirect_to cinema_placing_url(@cinema_placing), notice: "Cinema placing was successfully updated." }
        format.json { render :show, status: :ok, location: @cinema_placing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cinema_placing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cinema_placings/1 or /cinema_placings/1.json
  def destroy
    @cinema_placing.destroy!

    respond_to do |format|
      format.html { redirect_to cinema_placings_url, notice: "Cinema placing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema_placing
      @cinema_placing = CinemaPlacing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cinema_placing_params
      params.require(:cinema_placing).permit(:movie_detail_id, :cinema_id, :time, :day_of_week)
    end
end
