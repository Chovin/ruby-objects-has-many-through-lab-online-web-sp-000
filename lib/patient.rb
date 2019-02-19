class Genre
  attr_reader :name, :genre, :artist
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
      appointment.patient == self
    end
  end
  
  def artists
    self.songs.map do |song|
      song.artist
    end
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
end