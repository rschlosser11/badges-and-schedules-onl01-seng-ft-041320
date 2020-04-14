def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.collect{|name| badge_maker(name)};
end

def assign_rooms(attendees)
  room_number = 1;
  index = 0;
  room_assignments = [];
  until index == attendees.length
    room_assignments << "Hello, #{attendees[index]}! You'll be assigned to room #{room_number}!"
    index += 1
    room_number += 1
  end
  room_assignments
end

def printer(attendees) 
  batch_badge_creator(attendees).each do |name_tags|
    puts name_tags
  end
  assign_rooms(attendees).each do |rooms|
    puts rooms
  end
end