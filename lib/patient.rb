class Patient

  attr_reader :appointments, :doctors 

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.patient = self
  end

end
