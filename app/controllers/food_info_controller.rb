class FoodInfoController < ApplicationController
	def show
		@food_info_list = FoodInfo.all
	end

	def new
		@food = FoodInfo.new
		#food.food_item = 
	end
	def create
		@food = FoodInfo.new
		@food.food_item = params[:food_info][:food_item]
		@food.calories = params[:food_info][:calories]
		@food.carb = params[:food_info][:carb]
		@food.protein = params[:food_info][:protein]
		@food.fat = params[:food_info][:fat]

		if @food.save
			puts "Successfully saved"
		end
	end
end
