class AparmentsController < ApplicationController
  before_action :set_aparment, only: [:show, :update, :destroy]

  # GET /aparments
  def index
    @aparments = Aparment.all

    render json: @aparments
  end

  # GET /aparments/1
  def show
    render json: @aparment
  end

  # POST /aparments
  def create
    @aparment = Aparment.new(aparment_params)

    if @aparment.save
      render json: @aparment, status: :created, location: @aparment
    else
      render json: @aparment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aparments/1
  def update
    if @aparment.update(aparment_params)
      render json: @aparment
    else
      render json: @aparment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aparments/1
  def destroy
    @aparment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aparment
      @aparment = Aparment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aparment_params
      params.require(:aparment).permit(:number)
    end
end
