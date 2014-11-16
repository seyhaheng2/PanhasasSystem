class TypeOfDegreesController < ApplicationController
  before_action :set_type_of_degree, only: [:show, :edit, :update, :destroy]

  # GET /type_of_degrees
  # GET /type_of_degrees.json
  def index
    @type_of_degrees = TypeOfDegree.all
  end

  # GET /type_of_degrees/1
  # GET /type_of_degrees/1.json
  def show
  end

  # GET /type_of_degrees/new
  def new
    @type_of_degree = TypeOfDegree.new
  end

  # GET /type_of_degrees/1/edit
  def edit
  end

  # POST /type_of_degrees
  # POST /type_of_degrees.json
  def create
    @type_of_degree = TypeOfDegree.new(type_of_degree_params)

    respond_to do |format|
      if @type_of_degree.save
        format.html { redirect_to @type_of_degree, notice: 'Type of degree was successfully created.' }
        format.json { render :show, status: :created, location: @type_of_degree }
      else
        format.html { render :new }
        format.json { render json: @type_of_degree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_of_degrees/1
  # PATCH/PUT /type_of_degrees/1.json
  def update
    respond_to do |format|
      if @type_of_degree.update(type_of_degree_params)
        format.html { redirect_to @type_of_degree, notice: 'Type of degree was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_of_degree }
      else
        format.html { render :edit }
        format.json { render json: @type_of_degree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_degrees/1
  # DELETE /type_of_degrees/1.json
  def destroy
    @type_of_degree.destroy
    respond_to do |format|
      format.html { redirect_to type_of_degrees_url, notice: 'Type of degree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_degree
      @type_of_degree = TypeOfDegree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_of_degree_params
      params.require(:type_of_degree).permit(:name)
    end
end
