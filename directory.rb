# students instance variable
@students = []

# print the header of the students list
def print_header
    puts "The students of Villians Academy"
    puts "--------------------------------"
    puts ""
end

# prints the students list from the instance variable array
def print_student_list
    @students.each_with_index do |student, index|
        puts "#{index + 1}. #{student[:name]} of the #{student[:cohort]} cohort ,age #{student[:age]}. Likes #{student[:hobby]}."
    end
end

# prints the footer with the total number of students.
def print_footer
    puts ""
    puts "Overall, we have #{@students.count} great students"
    puts ""
end

def input_students
    # provide instructions to input student details
    puts "Please enter the names of the students"
    puts "To finish, just leave name blank and hit enter"
    # get name
    name = gets.chomp.strip.capitalize
    # while the name is not empty, repeat this code
    while !name.empty? do
        # get age
        puts "What is the students age"
        age = gets.chomp.strip
        if age == ""
            age = "Unknown"
        end
        # get hobby
        puts "What is the students hobby"
        hobby = gets.chomp.strip.downcase
        if hobby == ""
            hobby = "none"
        end
        # get cohort
        puts "In which cohort is the student"
        cohort = gets.chomp.strip.capitalize
        if cohort == ""
            cohort = "unknown"
        end
        # add the student hash to the instance array
        @students << {name: name, cohort: cohort, hobby: hobby, age: age}
        if @students.count <= 1
            puts "Now we have #{@students.count} student"
        else
            puts "Now we have #{@students.count} students"
        end
        # get anothername from the user and loop
        puts "Enter another student or move on"
        name = gets.chomp
    end
end

def print_menu
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more lines
end

# print the complete list of students with header and footer
def show_students
    print_header
    print_student_list
    print_footer
end

# user selection process
def process(selection)
    case selection
        when "1"
            input_students
        when "2"
            show_students
        when "9"
            exit # this will cause the program to terminate
        else
            puts "I don't know what you mean, try again"
    end
end

# start the selection process method
def interactive_menu
    loop do
        print_menu
        process(gets.chomp)
    end
end

interactive_menu