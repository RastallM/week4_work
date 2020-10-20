## Exercise 3

Diagram the following:

Each member can go to many meet-ups. Each meet up can have many members.
ruby

class Meetups

    def initialize(name)
        @name = name
    end
    attr_reader :name 
end

class Members
    
    def initialize(name)
        @name = name
    end
    attr_reader :name 
    
end

class MeetUpAttendance
    
    def initialise(meetup,member)
        @meetup = meetup
        @member = member
    end
    
    att_reader :meetup, :member
end

meetup1 = Meetups.new("meetup1")
Fred = Member.new("Fred")
meetup2 = Meetups.new("meetup2")
George = Member.new("George")

attendance = [MeetUpAttendance.new("meetup1", "George"), MeetUpAttendance.new("meetup1", "Fred"), MeetUpAttendance.new("meetup2", "George")]
    
