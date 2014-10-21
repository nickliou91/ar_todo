require_relative 'config/application'
require_relative 'app/controllers/todoparser'

puts "Put your application code in #{File.expand_path(__FILE__)}"


    command = ARGV
    task = command[0]
    task_desc = command[(1..-1)].join(" ")
    parser = ToDoParser.new
    
    if task == "add"
    	puts "go into this line ->"
      	parser.add(task_desc)

    elsif task == "list"	
      	parser.list
    elsif task == "delete"
      	parser.delete(task_desc)
    
    elsif task == "complete"
      parser.complete(task_desc)
    else
      puts "Invalid command"
    end
 







