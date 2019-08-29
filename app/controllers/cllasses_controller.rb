class CllassesController < ApplicationController
  before_action :set_cllass, only: [:show, :edit, :update, :destroy]

  # GET /cllasses
  # GET /cllasses.json
  def index
    @cllasses = Cllass.all
  end

  # GET /cllasses/1
  # GET /cllasses/1.json
  def show
  end

  # GET /cllasses/new
  def new
    @cllass = Cllass.new
  end

  # GET /cllasses/1/edit
  def edit
  end

  # POST /cllasses
  # POST /cllasses.json
  def create
    @cllass = Cllass.new(cllass_params)

    respond_to do |format|
      if @cllass.save
        format.html { redirect_to @cllass, notice: 'Cllass was successfully created.' }
        format.json { render :show, status: :created, location: @cllass }
      else
        format.html { render :new }
        format.json { render json: @cllass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cllasses/1
  # PATCH/PUT /cllasses/1.json
  def update
    respond_to do |format|
      if @cllass.update(cllass_params)
        format.html { redirect_to @cllass, notice: 'Cllass was successfully updated.' }
        format.json { render :show, status: :ok, location: @cllass }
      else
        format.html { render :edit }
        format.json { render json: @cllass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cllasses/1
  # DELETE /cllasses/1.json
  def destroy
    @cllass.destroy
    respond_to do |format|
      format.html { redirect_to cllasses_url, notice: 'Cllass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cllass
      @cllass = Cllass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cllass_params
      params.require(:cllass).permit(:name)
    end
end
