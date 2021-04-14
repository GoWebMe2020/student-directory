# Put students into an array
students = [
    "Dr. Hannibal Lecter",
    'Darth Vader',
    'Nurse Ratched',
    'Michael Corleone',
    'Alex DeLarge',
    'The Wicked Witch of the West',
    'Terminator',
    'Freddy Kruger',
    'The Joker',
    'Joffrey Batatheon',
    'Norman Bates',
]
# Print students
puts "The students of Villians Academy"
puts "-------------"
students.each do |student|
    puts student
end
# Finally we print the number of students
puts "Overall, we have #{students.count} great students"