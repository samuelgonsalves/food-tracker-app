class GoalController < ApplicationController
	def show
		@goal = Goal.find_by(id: 1)
	end
end
