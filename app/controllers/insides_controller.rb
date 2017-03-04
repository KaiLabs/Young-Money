class InsidesController < ApplicationController
  before_action :set_inside, only: [:show, :edit, :update, :destroy]

  # GET /insides
  # GET /insides.json
  def index
    @insides = Inside.all
  end

  # GET /insides/1
  # GET /insides/1.json
  def show
  end

  # GET /insides/new
  def new
    @inside = Inside.new
  end

  # GET /insides/1/edit
  def edit
  end

  # POST /insides
  # POST /insides.json
  def create
    @inside = Inside.new(inside_params)

    respond_to do |format|
      if @inside.save
        format.html { redirect_to @inside, notice: 'Inside was successfully created.' }
        format.json { render :show, status: :created, location: @inside }
      else
        format.html { render :new }
        format.json { render json: @inside.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insides/1
  # PATCH/PUT /insides/1.json
  def update
    respond_to do |format|
      if @inside.update(inside_params)
        format.html { redirect_to @inside, notice: 'Inside was successfully updated.' }
        format.json { render :show, status: :ok, location: @inside }
      else
        format.html { render :edit }
        format.json { render json: @inside.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insides/1
  # DELETE /insides/1.json
  def destroy
    @inside.destroy
    respond_to do |format|
      format.html { redirect_to insides_url, notice: 'Inside was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inside
      @inside = Inside.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inside_params
      params.require(:inside).permit(:name, :deadline, :category, :location)
    end
end
