class Appointment

  attr_accessor :doctor
  attr_reader :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self
  end

  def patient=(patient)
    @patient = patient
    doctor.patients << patient
    patient.doctors << doctor
  end

end
