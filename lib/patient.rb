class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|a| a.patient == self}
  end

  def doctors
    appointments.collect{|a| a.doctor}
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end



end
