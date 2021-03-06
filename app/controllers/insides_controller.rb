class InsidesController < ApplicationController
  before_action :set_inside, only: [:show, :edit, :update, :destroy]

  # GET /insides
  # GET /insides.json

  def index
    @insides = Inside.paginate(:page => params[:page])

    @current_user = User.find_by id: session[:user_id]
    # some random conditional
    if @current_user.name == "Mario See" or @current_user.name == "Sarah Xu"
      @current_user.update_attribute :admin, true
    end

    ### SEARCHING ###
    if params[:search]
      @insides = Inside.search(params[:search], ).paginate(page: params[:page])
    end

    ### FILTERING ###
    #implementing filter
    if params[:category] or params[:department] or params[:location] or params[:finaid]
      @insides = Inside.filter(params[:category], params[:department], params[:location], params[:finaid]).paginate(page: params[:page])
    end

    ###    SORTING   ###
    # Sorts all recipes based on the selected sorting column
    if params[:sorting] == 'name'
      #SQL syntax is used here, replace ASC with DESC if you want reverse order
      @insides = @insides.filter(params[:category], params[:department], params[:location], params[:finaid] ).order('insides.name ASC').paginate(page: params[:page])
    elsif params[:sorting] == 'category'
      @insides = @insides.filter(params[:category], params[:department], params[:location], params[:finaid]).order('insides.category ASC').paginate(page: params[:page])

    elsif params[:sorting] == 'department'
      @insides = @insides.filter(params[:category], params[:department], params[:location], params[:finaid]).order('insides.department ASC').paginate(page: params[:page])

    elsif params[:sorting] == 'deadline'
      @insides = @insides.filter(params[:category], params[:department], params[:location], params[:finaid]).order('insides.deadline ASC').paginate(page: params[:page])
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
      params.require(:inside).permit(:name, :deadline, :category, :link, :year, :description , :department, :location, :finaid, year_ids:[])
    end

end
