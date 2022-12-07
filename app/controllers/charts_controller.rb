class ChartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_regi
  before_action :set_chart, only: [:show, :edit, :update, :destroy] 

  # GET regis/1/charts
  def index
  end

  # GET regis/1/charts/new
  def new
    @chart = Chart.new
  end

  # POST regis/1/charts
  def create
    @chart = Chart.new chart_params
    if @regi.charts << @chart
      redirect_to regi_charts_path(@regi,@chart), notice: 'Patient Chart created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  # GET regis/1/charts/1
  def show
  end

  # GET regis/1/charts/1/edit
  def edit
  end

  # PUT regis/1/charts/1
  def update
    if @chart.update chart_params
      redirect_to(regi_charts_path(@regi), notice: 'Patient Chart updated.')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE regis/1/charts/1
  def destroy
    @chart.destroy
    redirect_to regi_charts_path(@regi), alert: "Patient Chart deleted."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regi
      @regi = Regi.find(params[:regi_id])
    end

    def set_chart
      @chart = @regi.charts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chart_params
      params.require(:chart).permit(:t_date, :soap, :acu_list, :c_med_list, :c_for_list, :o_treats, :regi_id, :id)
    end
end
