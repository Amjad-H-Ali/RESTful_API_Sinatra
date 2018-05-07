class PokemonController < ApplicationController




	# Index 
	
	get '/' do 
		
		@pokemon = Pokemon.all


		{
			success: true,
			message: "Found all #{@pokemon.length}",
			pokemon: @pokemon
		}.to_json


	end







	# Show
	get '/:id' do 
		
		@pokemon = Pokemon.find(params[:id])


		{
			success: true,
			message: "Found pokemon #{@pokemon.name}",
			pokemon: @pokemon
		}.to_json


	end







# Create Route

	post '/' do 
		
		@pokemon = Pokemon.new


		@pokemon.name = params[:name]


		@pokemon.save


		{
			success: true,
			message: "Created pokemon #{@pokemon.name}",
			pokemon: @pokemon
		}.to_json


	end





	# Delete route


	delete '/:id' do

		@pokemon = Pokemon.find params[:id]

		@pokemon.destroy


		{   success: true, 
			message: "You deleted pokemon \##{@pokemon.name}",
			deleted_item: @pokemon
		}.to_json


	end	






	# update route


	put '/:id' do


		@pokemon = Pokemon.find(params[:id]) 



		@pokemon.name = params[:name]
		@pokemon.save



		{   success: true, 
			message:"You updated pokemon \##{@pokemon.name}" ,
			updated_item: @pokemon

		}.to_json


	end
















end	