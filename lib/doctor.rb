class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @appointments << appointment
    @appointments
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    Appointment.all.map do |appt|
      appt.patient
    end
  end


end
