module FoodInfoHelper
	def display_calorie_chart
		column_chart FoodInfo.group(:food_item).sum(:calories), width:"300px", height:"400px",ytitle:"Calories", xtitle:"Food" 
	end
	def display_carb_chart
		column_chart FoodInfo.group(:food_item).sum(:carb), width:"300px", height:"400px",ytitle:"Carbs (in grams)", xtitle:"Food"
	end
	def display_protein_chart
		column_chart FoodInfo.group(:food_item).sum(:protein), width:"300px", height:"400px",ytitle:"Protein (in grams)", xtitle:"Food"
	end
	def display_fat_chart
		column_chart FoodInfo.group(:food_item).sum(:fat), width:"300px", height:"400px",ytitle:"Fat (in grams)", xtitle:"Food"
	end
end
