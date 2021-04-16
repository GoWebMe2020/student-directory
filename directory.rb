def print_header
    puts "The students of Villians Academy"
    puts "--------------------------------"
end

def print(names)
    names.each_with_index do |student, index|
        puts "#{index + 1}. #{student[:name]} of the #{student[:cohort]} cohort ,age #{student[:age]}. Likes #{student[:hobby]}."
    end
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

def print_by_cohort(names)
    puts "Which cohort are you looking for?"
    cohort = gets.chomp.capitalize
    month = []
    names.map do |x|
        if x[:cohort] == cohort
            month.push(x)
        end
    end
    month.each_with_index do |student, index|
        puts "#{index + 1}. #{student[:name]} of the #{student[:cohort]} cohort ,age #{student[:age]}. Likes #{student[:hobby]}."
    end
    
end

def print_by_hobby(names)
    puts "Which hobbies are you looking for?"
    hobby = gets.chomp
    hobbies = []
    names.map do |x|
        if x[:hobby] == hobby
            hobbies.push(x)
        end
    end
    hobbies.each_with_index do |student, index|
        puts "#{index + 1}. #{student[:name]} of the #{student[:cohort]} cohort ,age #{student[:age]}. Likes #{student[:hobby]}."
    end
    
end

def input_students
    # create an empty array
    students = []
    # provide instructions
    puts "Please enter the names of the students"
    puts "To finish, just leave name blank and hit enter"
    # get name
    name = String.new(gets).strip.capitalize
    # while the name is not empty, repeat this code
    while !name.empty? do
        # get age
        puts "What is the students age"
        age = String.new(gets).strip
        if age == ""
            age = "Unknown"
        end
        # get hobby
        puts "What is the students hobby"
        hobby = String.new(gets).strip.downcase
        if hobby == ""
            hobby = "none"
        end
        # get cohort
        puts "In which cohort is the student"
        cohort = String.new(gets).strip.capitalize
        if cohort == ""
            cohort = "unknown"
        end
        # add the student hash to the array
        students << {name: name, cohort: cohort, hobby: hobby, age: age}
        if students.count <= 1
            puts "Now we have #{students.count} student"
        else
            puts "Now we have #{students.count} students"
        end
        # get anothername from the user and loop
        puts "Enter another student or move on"
        name = String.new(gets).strip
    end
    # return the array of students
    students
end

# create a local variable with the output from input_students
students = input_students

# call the methods
print_header
print(students)
print_footer(students)
print_by_cohort(students)
print_by_hobby(students)