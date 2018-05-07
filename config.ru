require 'sinatra/base'

require 'sinatra/activerecord'




# Model
require './models/PokemonModel'







# Controllers
require './controllers/ApplicationController'

require './controllers/PokemonController'





# Routes
map('/') {
	run ApplicationController
}



map('/pokemon') {
	run PokemonController
}


