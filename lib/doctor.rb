class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor.name == self.name
    end
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
  end
end
