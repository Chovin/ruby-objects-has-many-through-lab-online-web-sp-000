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
      song.artist == self
    end
  end
  
  def genres
    self.appointment.map do |song|
      song.genre
    end
  end
  
  def new_appointment(name, genre)
    Appointment.new(name, self, genre)
  end
end