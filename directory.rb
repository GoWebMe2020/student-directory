def print_header
    puts "The students of Villians Academy"
    puts "-------------"
end

def print(names)
    names.each do |student|
        puts student[:name].center(20, "-")
    end
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

def input_students
    # create an empty array
    students = []
    puts "Please enter the names of the students"
    puts "To finish, just hit return four times"
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
        #puts "What is the students hobby"
        #hobby = gets.chomp
        #puts "What is the students age"
        #age = gets.chomp
        # add the student hash to the array
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        # get anothername from the user
        puts "Enter another student or move on"
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