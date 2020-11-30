class VolonteersController < ApplicationController
  before_action :set_volonteer, only: [:show, :edit, :update, :destroy]

  # GET /volonteers
  # GET /volonteers.json
  def index
    @volonteers = Volonteer.all
  end

  # GET /volonteers/1
  # GET /volonteers/1.json
  def show
  end

  # GET /volonteers/new
  def new
    @volonteer = Volonteer.new
  end

  # GET /volonteers/1/edit
  def edit
  end

  # POST /volonteers
  # POST /volonteers.json
  def create
    @volonteer = Volonteer.new(volonteer_params)

    respond_to do |format|
      if @volonteer.save
        format.html { redirect_to @volonteer, notice: 'Volonteer was successfully created.' }
        format.json { render :show, status: :created, location: @volonteer }
      else
        format.html { render :new }
        format.json { render json: @volonteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /volonteers/1
  # PATCH/PUT /volonteers/1.json
  def update
    respond_to do |format|
      if @volonteer.update(volonteer_params)
        format.html { redirect_to @volonteer, notice: 'Volonteer was successfully updated.' }
        format.json { render :show, status: :ok, location: @volonteer }
      else
        format.html { render :edit }
        format.json { render json: @volonteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volonteers/1
  # DELETE /volonteers/1.json
  def destroy
    @volonteer.destroy
    respond_to do |format|
      format.html { redirect_to volonteers_url, notice: 'Volonteer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volonteer
      @volonteer = Volonteer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def volonteer_params
      params.require(:volonteer).permit(:name)
    end
end
