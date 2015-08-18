puts "What greeting and names would you like to use?"
greeting = ARGV.slice!(0)

    
ARGV.each { |item| puts greeting + " " + item }




