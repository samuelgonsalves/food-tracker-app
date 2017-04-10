module FoodInfoHelper
	def calorie_chart
		line_chart FoodInfo.group(:food_item).sum(:calories), width:"500px", height:"400px",ytitle:"Calories", xtitle:"Food"  
	end
	def carb_chart
		line_chart FoodInfo.group(:food_item).sum(:carb), width:"300px", height:"400px",ytitle:"Carbs (in grams)", xtitle:"Food"
	end
	def protein_chart
		line_chart FoodInfo.group(:food_item).sum(:protein), width:"300px", height:"400px",ytitle:"Protein (in grams)", xtitle:"Food"
	end
	def fat_chart
		line_chart FoodInfo.group(:food_item).sum(:fat), width:"300px", height:"400px",ytitle:"Fat (in grams)", xtitle:"Food"
	end


	def calorie_chart_by_day
		line_chart FoodInfo.group_by_day(:created_at, series: false).sum(:calories), width:"300px", height:"400px",ytitle:"Calories", xtitle:"Food" 	
	end
	def carb_chart_by_day
		line_chart FoodInfo.group_by_day(:created_at, series: false).sum(:carb), width:"300px", height:"400px",ytitle:"Carbs (in grams)", xtitle:"Food" 	
	end
	def protein_chart_by_day
		line_chart FoodInfo.group_by_day(:created_at, series: false).sum(:protein), width:"300px", height:"400px",ytitle:"Protein (in grams)", xtitle:"Food" 	
	end
	def fat_chart_by_day
		line_chart FoodInfo.group_by_day(:created_at, series: false).sum(:fat), width:"300px", height:"400px",ytitle:"Fat (in grams)", xtitle:"Food" 	
	end
	
	def top_calorific_foods
		FoodInfo.order(:calories).last(2)
	end
end
