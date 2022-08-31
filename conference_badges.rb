# Write your code here.

def badge_maker attendee
    "Hello, my name is #{attendee}."
end

def batch_badge_creator attendees
    attendees.map{ |name| "Hello, my name is #{name}." }
end

def assign_rooms attendees
    attendees.map.with_index(1) do |attendee, room_number|
        "Hello, #{attendee}! You'll be assigned to room #{room_number}!"
    end
end

def printer attendees
    batch_badge_creator(attendees).each do |badge|
        puts badge
    end

    assign_rooms(attendees).each do |assignment|
        puts assignment
    end
end