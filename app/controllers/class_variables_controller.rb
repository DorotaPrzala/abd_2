class ClassVariablesController < ApplicationController
  before_action :set_class_variable, only: [:show, :edit, :update, :destroy]

  # GET /class_variables
  # GET /class_variables.json
  def index
    @class_variables = ClassVariable.all
  end

  # GET /class_variables/1
  # GET /class_variables/1.json
  def show
  end

  # GET /class_variables/new
  def new
    @class_variable = ClassVariable.new
  end

  # GET /class_variables/1/edit
  def edit
  end

  # POST /class_variables
  # POST /class_variables.json
  def create
    @class_variable = ClassVariable.new(class_variable_params)

    respond_to do |format|
      if @class_variable.save
        format.html { redirect_to @class_variable, notice: 'Class variable was successfully created.' }
        format.json { render :show, status: :created, location: @class_variable }
      else
        format.html { render :new }
        format.json { render json: @class_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_variables/1
  # PATCH/PUT /class_variables/1.json
  def update
    respond_to do |format|
      if @class_variable.update(class_variable_params)
        format.html { redirect_to @class_variable, notice: 'Class variable was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_variable }
      else
        format.html { render :edit }
        format.json { render json: @class_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_variables/1
  # DELETE /class_variables/1.json
  def destroy
    @class_variable.destroy
    respond_to do |format|
      format.html { redirect_to class_variables_url, notice: 'Class variable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_variable
      @class_variable = ClassVariable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def class_variable_params
      params.require(:class_variable).permit(:orders_number)
    end
end
