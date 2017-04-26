class InsidesController < ApplicationController
  before_action :set_inside, only: [:show, :edit, :update, :destroy]

  # GET /insides
  # GET /insides.json

  def index
    @insides = Inside.all

    @current_user = User.find_by id: session[:user_id]
    # some random conditional
    if @current_user.name == "Mario See" or @current_user.name == "Mario See"
      @current_user.update_attribute :admin, true
    end

    ### SEARCHING ###
    if params[:search]
      @insides = Inside.search(params[:search], )
    end

    ### FILTERING ###
    #implementing filter
    if params[:category] or params[:semester] or params[:department]
      @insides = Inside.filter(params[:category], params[:semester], params[:department])
    end
    #implementing filter for semester
  #  if params[:filter_semester]
  #    @insides = Inside.filter_semester(params[:filter_semester])
  #  end

    ###    SORTING   ###
    # Sorts all recipes based on the selected sorting column
    if params[:sorting] == 'name'
      #SQL syntax is used here, replace ASC with DESC if you want reverse order
      @insides = @insides.order('insides.name ASC')

    elsif params[:sorting] == 'category'
      @insides = @insides.order('insides.category ASC')

    elsif params[:sorting] == 'department'
      @insides = @insides.order('insides.department ASC')

    elsif params[:sorting] == 'deadline'
      @insides = @insides.order('insides.deadline ASC')

    elsif params[:sorting] == 'semester'
      @insides = @insides.order('insides.semester ASC')
    end

  end

  def favorite
    type = params[:type]
    @inside = Inside.find params[:id]
    if type == "favorite"
      current_user.favorites << @inside
      redirect_to :back, notice: 'You favorited #{@inside.name}'

    elsif type == "unfavorite"
      current_user.favorites.delete(@inside)
      redirect_to :back, notice: 'Unfavorited #{@inside.name}'

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
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
    #params.require(:inside).permit(:year, year_ids:[])
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
      params.require(:inside).permit(:name, :deadline, :category, :link, :year, :description , :department, :semester, :location, year_ids:[])
    end

end
