class Course001sController < ApplicationController
  before_action :set_course001, only: [:show, :edit, :update, :destroy]

  # GET /course001s
  # GET /course001s.json
  def index
    @course001s = Course001.all
     if  params[:name].present?
      @course001s=@course001s.where("name like ?", "%#{params[:name]}%")
  end

    if  params[:teacher].present?
      @course001s=@course001s.where("teacher like ?", "%#{params[:teacher]}%")
  end

      if  params[:classroom].present?
      @course001s=@course001s.where("classroom like ?", "%#{params[:classroom]}%")
  end

      if  params[:time].present?
      @course001s=@course001s.where("time like ?", "%#{params[:time]}%")
  end

    if  params[:credit].present?
      @course001s=@course001s.where("credit like ?", "%#{params[:credit]}%")
  end

    

  end

  # GET /course001s/1
  # GET /course001s/1.json
  def show

  end

  # GET /course001s/new
  def new
    @course001 = Course001.new
  end

  # GET /course001s/1/edit
  def edit
  end

  # POST /course001s
  # POST /course001s.json
  def create
    @course001 = Course001.new(course001_params)

    respond_to do |format|
      if @course001.save
        format.html { redirect_to @course001, notice: 'Course001 was successfully created.' }
        format.json { render :show, status: :created, location: @course001 }
      else
        format.html { render :new }
        format.json { render json: @course001.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course001s/1
  # PATCH/PUT /course001s/1.json
  def update
    respond_to do |format|
      if @course001.update(course001_params)
        format.html { redirect_to @course001, notice: 'Course001 was successfully updated.' }
        format.json { render :show, status: :ok, location: @course001 }
      else
        format.html { render :edit }
        format.json { render json: @course001.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course001s/1
  # DELETE /course001s/1.json
  def destroy
    @course001.destroy
    respond_to do |format|
      format.html { redirect_to course001s_url, notice: 'Course001 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course001
      @course001 = Course001.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course001_params
      params.require(:course001).permit(:name, :teacher, :classroom, :time, :credit)
    end
end
