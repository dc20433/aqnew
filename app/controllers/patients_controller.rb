class PatientsController < ApplicationController
  before_action :set_regi
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET regis/1/patients
  def index
  end

  # GET regis/1/patients/new
  def new
    @patient = Patient.new
  end

  # POST regis/1/patients
  def create
    @patient = Patient.new patient_params
    if @regi.patients << @patient
      redirect_to(regi_patients_path(@regi,@patient), notice: 'Patient Record created.')
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET regis/1/patients/1
  def show
  end

  # GET regis/1/patients/1/edit
  def edit
  end


  # PUT regis/1/patients/1
  def update
    if @patient.update patient_params
      redirect_to regi_patients_path(@regi), notice:'Patient Record updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE regis/1/patients/1
  def destroy
    @patient.destroy
    redirect_to regi_patients_path(@regi), alter:"Patient Record deleted"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regi
      @regi = Regi.find(params[:regi_id])
    end

    def set_patient
      @patient = @regi.patients.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_params
      params.require(:patient).permit(:vDate, :mStat, :height, :weight, :street, :city, :state, :zip, :cell, :home, :work, :email, :referred, :com1, :com2, :com3, :dOnset, :painScale, :dLost, :dRestd, :cOnset, :better, :worse, :oDrs, :oDrsWhen, :pcpNm, :hosp, :hWhen, :diagGiven, :diagWhere, :aqB4, :aqrist, :aqWhere, :oDis, :injSurg, :medTaken, :alcohol, :tobacco, :lastPrd, :preg, :pregWks, :regi_id, diList:[] )
    end
end
