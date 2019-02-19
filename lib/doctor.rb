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
  
  def appointment
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def genres
    self.appointment.map do |appointment|
      appointment.genre
    end
  end
  
  def new_appointment(name, patient)
    Appointment.new(name, self, patient)
  end
end