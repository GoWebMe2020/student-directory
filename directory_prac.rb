def print_header
    puts "The students of Villians Academy"
    puts "-------------"
end

def print(names)
    names.each_with_index do |student, index|
        if student[:name].start_with?("F")
            puts "#{index + 1}. #{student[:name]} #{student[:cohort]} cohort"
        end
    end
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
        # add the student hass to the array
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        # get anothername from the user
        name = gets.chomp
    end
    # return the array of students
    students
end

# Nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)