require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
	def change
		create_table :tasks do |t|

			t.string :task_description
			t.datetime	:created_at
			t.datetime :completed_at

			t.timestamps

		end

	end

end