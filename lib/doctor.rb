class Doctor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select { |appt| appt.doctor == self }
  end

  def patients
    appointments.map { |appt| appt.patient }
  end

  def self.all
    @@all
  end
end