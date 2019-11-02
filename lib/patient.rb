class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end

  def doctors
    appointments.map { |appt| appt.doctor }
  end

  def self.all
    @@all
  end
end