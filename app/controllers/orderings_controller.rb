class OrderingsController < ApplicationController
  before_action :set_ordering, only: %i[ show edit update destroy ]

  # GET /orderings or /orderings.json
  def index
    @orderings = Ordering.all
  end

  # GET /orderings/1 or /orderings/1.json
  def show
  end

  # GET /orderings/new
  def new
    @ordering = Ordering.new
  end

  # GET /orderings/1/edit
  def edit
  end

  # POST /orderings or /orderings.json
  def create
    phone_number = params[:ordering][:customer_id]
    customer_id = Customer.find_by(phone_number: phone_number)&.id
    params[:ordering] = {
      customer_id: customer_id,
      movie_detail_id: params[:ordering][:movie_detail_id],
      cinema_placing_id: params[:ordering][:cinema_placing_id]
    }

    @ordering = Ordering.new(ordering_params)

    respond_to do |format|
      if @ordering.save
        format.html { redirect_to ordering_url(@ordering), notice: "Ordering was successfully created." }
        format.json { render :show, status: :created, location: @ordering }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ordering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderings/1 or /orderings/1.json
  def update
    respond_to do |format|
      if @ordering.update(ordering_params)
        format.html { redirect_to ordering_url(@ordering), notice: "Ordering was successfully updated." }
        format.json { render :show, status: :ok, location: @ordering }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ordering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderings/1 or /orderings/1.json
  def destroy
    @ordering.destroy!

    respond_to do |format|
      format.html { redirect_to orderings_url, notice: "Ordering was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordering
      @ordering = Ordering.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ordering_params
      params.require(:ordering).permit(:customer_id, :movie_detail_id, :cinema_placing_id)
    end
end
