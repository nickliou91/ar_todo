require 'faker'
require_relative '../config/application'

# 10.times do
task = Task.new
task.task_description = Faker::Lorem.sentence
task.created_at = DateTime.now
# task.completed_at = DateTime.now
task.save

# end 