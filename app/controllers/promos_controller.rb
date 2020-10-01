class PromosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_promo, only: [:show, :edit, :update, :destroy]

  # GET /promos
  # GET /promos.json
  def index
    @promos = Promo.all#.order(created_at: :DESC)
  end

  # GET /promos/1
  # GET /promos/1.json
  def show
  end

  # GET /promos/new
  def new
    @promo = Promo.new
  end

  # GET /promos/1/edit
  def edit
  end

  # POST /promos
  # POST /promos.json
  def create
    @promo             = current_user.promos.build(promo_params)
    @promo.school_code = current_user.school_code

    if @promo.save
      redirect_to @promo, notice: 'Promo was successfully created.'
    else
     render :new
    end
  end

  # PATCH/PUT /promos/1
  # PATCH/PUT /promos/1.json
  def update
    if @promo.update(promo_params)
      redirect_to @promo, notice: 'Promo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /promos/1
  # DELETE /promos/1.json
  def destroy
    @promo.destroy
    redirect_to promos_url, notice: 'Promo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promo
      @promo = Promo.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promo_params
      params.require(:promo).permit(:title, :school_code, :slug, :user_id)
    end
end
