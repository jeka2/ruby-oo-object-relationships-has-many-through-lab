class Patient
    attr_accessor :doctor, :appointment

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(time, doctor)
        Appointment.new(time, self, doctor)
    end

    def appointments
        Appointment.all.select { |appt| appt.patient == self }
    end

    def doctors
        appointments.map { |appt| appt.doctor }
    end
end