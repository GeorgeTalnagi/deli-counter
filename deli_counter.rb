#should say the line is empty, should display the current line, works with
#different people in line
def line(names) 
    katz_deli = [] 
    if names.length <= 0
        puts "The line is currently empty."
    else 
    names.each.with_index(1){|name, spot_in_line| katz_deli << "#{spot_in_line}. #{name}"}
        puts "The line is currently: " + katz_deli.join(" ")
    end 
end 

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end 

#should say that the line is empty, should serve the first person in line and
#remove them from the queue
def now_serving(katz_deli)
    if katz_deli.length == 0 
        puts "There is nobody waiting to be served!"
    else 
        name = katz_deli.first
        puts "Currently serving #{name}."
        katz_deli.shift
    end 
end 

