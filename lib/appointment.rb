class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end
