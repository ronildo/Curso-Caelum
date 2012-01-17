class CursosController < ApplicationController
	def index
		index = "http://query.yahooapis.com/v1/public/yql"
		query = "select * from brazil.caelum.proximoscursos"
		env	= "store://datatables.org/alltableswithkeys"
		resp = Restfulie.at(index).get(:q => query, :env => env)
		@cursos = resp['query']['results']['cursos']['curso']
	end

end
