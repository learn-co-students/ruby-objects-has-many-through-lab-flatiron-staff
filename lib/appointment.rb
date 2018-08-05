class Appointment
  attr_accessor :doctor, :name, :doctor, :patient
  @@all = []

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end
