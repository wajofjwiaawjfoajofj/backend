class TodomodelsController < ApplicationController
  before_action :set_todomodel, only: %i[ show update destroy ]

  # GET /todomodels
  def index
    @todomodels = Todomodel.all

    render json: @todomodels
  end

  # GET /todomodels/1
  def show
    render json: @todomodel
  end

  # POST /todomodels
  def create
    @todomodel = Todomodel.new(todomodel_params)

    if @todomodel.save
      render json: @todomodel, status: :created, location: @todomodel
    else
      render json: @todomodel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todomodels/1
  def update
    if @todomodel.update(todomodel_params)
      render json: @todomodel
    else
      render json: @todomodel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /todomodels/1
  def destroy
    @todomodel.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todomodel
      @todomodel = Todomodel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todomodel_params
      params.require(:todomodel).permit(:title, :kind, :day)
    end
end
