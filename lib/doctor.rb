class Doctor
  attr_reader :name
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
      appointment.doctor == self
    end
  end
  
  def patients
    self.appointment.map do |appointment|
      appointment.patients
    end
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
end