class CakesController < ApplicationController
  before_action :set_cake, only: [:edit, :update, :destroy]

  # GET /cakes
  # GET /cakes.json
  def index
    @cakes = Cake.all
  end

  # GET /cakes/1
  # GET /cakes/1.json
  def show
    @cake = Cake.find(params[:id])
    @cake.oil = @cake.oil + 5
    @cake.save
  end

  # GET /cakes/new
  def new
    @cake = Cake.new
  end

  # GET /cakes/1/edit
  def edit
  end

  # POST /cakes
  # POST /cakes.json
  def create
    @cake = Cake.new(cake_params)

    respond_to do |format|
      if @cake.save
        format.html { redirect_to @cake, notice: 'Cake was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cake }
      else
        format.html { render action: 'new' }
        format.json { render json: @cake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cakes/1
  # PATCH/PUT /cakes/1.json
  def update
    respond_to do |format|
      if @cake.update(cake_params)
        format.html { redirect_to @cake, notice: 'Cake was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cakes/1
  # DELETE /cakes/1.json
  def destroy
    @cake.destroy
    respond_to do |format|
      format.html { redirect_to cakes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cake
      @cake = Cake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cake_params
      params.require(:cake).permit(:name, :eggs, :flour, :sugar, :oil, :comments)
    end
end
