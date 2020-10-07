class ClassroomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_promo
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  # GET /classrooms
  def index
    @classrooms = Classroom.all
  end

  # GET /classrooms/1
  def show
  end

  # GET /classrooms/new
  def new
    @classroom = Classroom.new
  end

  # GET /classrooms/1/edit
  def edit
  end

  # POST /classrooms
  def create
    @classroom = @promo.classrooms.build(classroom_params)

    if @classroom.save
      redirect_to promo_classroom_path(@promo, @classroom), notice: 'Classroom was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /classrooms/1
  def update
      if @classroom.update(classroom_params)
      redirect_to promo_classroom_path(@promo, @classroom), notice: 'Classroom was successfully updated.'
    else
      render :edit
    end

  end

  # DELETE /classrooms/1
  def destroy
    @classroom.destroy
    redirect_to classrooms_url, notice: 'Classroom was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_classroom
      @classroom = @promo.classrooms.friendly.find(params[:id])
    end
    def set_promo
      @promo = Promo.friendly.find(params[:promo_id])
    end
    # Only allow a trusted parameter "white list" through.
    def classroom_params
      params.require(:classroom).permit(:title, :slug, :promo_id)
    end
end
