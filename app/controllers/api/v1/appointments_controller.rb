class Api::V1::AppointmentsController < ApplicationController
  def index
    appointments = Appointment.order('created_at ASC')
    render json: { status: 'SUCCESS', message: 'Display Appointmet list', data: appointments }, status: :ok
  end

  def create
    appointment = Appointment.new(appointment_params)
    if appointment.save
      render json: { status: 'SUCCESS', message: 'Appointment successfully created', data: appointment }, status: 200
    else
      puts appointment.errors.inspect
      render json: { status: 'ERROR', message: 'Appointment not successfully created', data: appointment.errors },
             status: :unprocessable_entity
    end
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
    render json: { status: 'SUCCESS', message: 'Appointment successfully deleted', data: appointment }, status: :ok
  end

  def update
    appointment = Appointment.find(params[:id])
    puts appointment
    if appointment.update(appointment_params)
      render json: { status: 'SUCCESS', message: 'Appointment successfully updated', data: appointment }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Appointment not successfully updated', data: appointment.errors },
             status: :unprocessable_entity
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:user_id, :doctor_id, :doctor_name, :appointment_time, :location)
  end
end
