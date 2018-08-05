class Patient
  attr_accessor :appointments, :appointment
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
    @appointments

  end

  def doctors
    Appointment.all.map do |appt|
      appt.doctor
    end
  end

end
