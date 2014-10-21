require_relative '../../config/application'


class ToDoParser
 
  def list
    puts "This is your to do list: "
    Task.all.each do| task|
    	puts "#{task.id} #{task.task_description} #{mark_x_complete(task.completed_at)}"
    end
  end
 
  def mark_x_complete(value)
    return "[X] " if value != nil
    return "[ ] "
  end
 
  def add(task_desc)
    task =Task.new 
  	task.task_description = task_desc
	task.created_at = DateTime.now
	task.save
    
    puts "Added into todo list"
    list

  end
 
  def delete(task_desc)
 
    task = Task.find(task_desc)
    task.destroy
    list 
    puts "#{task_desc} Deleted from to do list"

  end
 
  def complete(task_desc)
   
     task = Task.find(task_desc)
    if task == nil 
    	puts "Task not found"
    else
    	if task.completed_at == nil
    		task.completed_at = DateTime.now
    		task.save
    		list
    	else
    		puts "Task already mark completed !"
    	end 
  	end
 end
end  

