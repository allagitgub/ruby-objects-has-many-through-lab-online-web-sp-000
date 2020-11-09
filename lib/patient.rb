class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient.name == self.name
    end
  end

  def doctors
    patient_doctors = []
    Appointment.all.select do |appointment|
      if appointment.patient.name == self.name
        patient_doctors << appointment.doctor
      end
    end
    patient_doctors
  end
end
