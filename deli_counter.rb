def line(customers)
    if customers.empty?
        puts "The line is currently empty."
    else
        current_line = "The line is currently:"
        customers.each.with_index(1) do |customer, number|
            current_line << " #{number}. #{customer}"
        end
        puts current_line
    end
end

def take_a_number(katz_deli, customer)
    katz_deli << customer
    puts "Welcome, #{customer}. You are number #{katz_deli.length} in line."
end

def now_serving(customer_array)
    if customer_array.length < 1
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{customer_array.first}."
    end
    customer_array.shift
end