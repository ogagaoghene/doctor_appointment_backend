class Api::V1::DoctorsController < ApplicationController
  def index
    doctors = Doctor.order('created_at ASC')
    render json: { status: 'SUCCESS', message: 'Doctor details successfully displayed', data: doctors }, status: :ok
  end

  def show
    doctor = Doctor.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Doctor list rendered successfully', data: doctor }, status: :ok
  end

  def create
    doctor = Doctor.new(doctor_params)
    if doctor.save
      render json: { status: 'SUCCESS', message: 'Doctor successfully created', data: doctor }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Doctor not successfully created', data: doctor.errors },
             status: :unprocessable_entity
    end
  end

  def destroy
    doctor = Doctor.find(params[:id])
    doctor.destroy
    render json: { status: 'SUCCESS', message: 'Doctor successfully deleted', data: doctor }, status: :ok
  end

  def update
    doctor = Doctor.find(params[:id])
    if doctor.update_attributes(doctor_params)
      render json: { status: 'SUCCESS', message: 'Doctor succesfully updated', data: doctor }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Doctor not successfully updated', data: doctor.errors },
             status: :unprocessable_entity
    end
  end

  private

  def doctor_params
    params.permit(:firstname, :lastname, :email, :phonenumber, :specialty, :years_of_experience, :picture,
                  :location)
  end
end
