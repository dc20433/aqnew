class RegisController < ApplicationController
  before_action :set_regi, only: %i[ show edit update destroy ]

  # GET /regis or /regis.json
  def index
    @q = Regi.ransack(params[:q])
    @regis = @q.result(distinct: true)
  end

  # GET /regis/1 or /regis/1.json
  def show
  end

  # GET /regis/new
  def new
    @regi = Regi.new
  end

  # GET /regis/1/edit
  def edit
  end

  # POST /regis or /regis.json
  def create
    @regi = Regi.new regi_params
    if @regi.save
      redirect_to regis_path, notice: "Patient created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /regis/1 or /regis/1.json
  def update
    if @regi.update regi_params
      redirect_to regis_path, notice: "Patient updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /regis/1 or /regis/1.json
  def destroy
    @regi.destroy

    respond_to do |format|
      format.html { redirect_to regis_url, notice: "Patient deleted ..." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regi
      @regi = Regi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def regi_params
      params.require(:regi).permit(:lastNm, :firstNm, :init, :gender, :dob)
    end
end
