class ChalsController < ApplicationController
  before_action :set_chal, only: [:show, :update, :destroy]

  # GET /chals
  def index
    @chals = Chal.all

    render json: @chals
  end

  # GET /chals/1
  def show
    render json: @chal
  end

  # POST /chals
  def create
    @chal = Chal.new(chal_params)

    if @chal.save
      render json: @chal, status: :created, location: @chal
    else
      render json: @chal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chals/1
  def update
    if @chal.update(chal_params)
      render json: @chal
    else
      render json: @chal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chals/1
  def destroy
    @chal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chal
      @chal = Chal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chal_params
      params.require(:chal).permit(:name)
    end
end
