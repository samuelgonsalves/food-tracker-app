class FoodInfoController < ApplicationController
	def show
		@food_info_list = FoodInfo.all
	end

	def new
		@food = FoodInfo.new
		#food.food_item = 
	end
	def create
	end
end
