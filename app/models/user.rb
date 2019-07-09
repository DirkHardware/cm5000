class User < ActiveRecord::Base

    has_many :assignments
    has_many :chores, through: :assignments

    def finish_chores
        self.assignments.map do |assignment_instance|
            assignment_instance.destroy
        end 
    end 
end 