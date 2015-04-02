class DatasetsController < ApplicationController
  def api
  	method = params[:method]
  	dataset = params[:dataset]
  	case method
  	when 'columns' then
  		render json: build_columns(dataset)
  	when 'rows' then
  		render json: build_rows(dataset)
  	when 'commit' then
  		do_commit
  	else
  		render json: build_error
  	end
  end

  private

 	def build_columns(dataset)
 		"{\"columns\": "+
 			"[{ \"name\": \"product_id\",\"type\": 1,\"length\": 30,\"scale\": null },"+
 			" { \"name\": \"description\",\"type\": 1,\"length\": 60,\"scale\": null },"+
 			" { \"name\": \"list_price\",\"type\": 4,\"length\": null,\"scale\": 2 },"+
 			" { \"name\": \"shipping\",\"type\": 4,\"length\": null,\"scale\": 2 }] }"
 	end

 	def build_rows(dataset)
  	products = Product.all

  	result = products.map do |product|
  		{}.tap do |pro_hash|
				pro_hash[:product_id]  = product.product_id
				pro_hash[:description] = product.description
				pro_hash[:list_price]  = product.list_price
				pro_hash[:shipping]    = product.shipping
			end
		end  			

		{rows: result}
 	end

 	def do_commit
 		# TODO: process POST commit
 	end

 	def build_error
 		(params[:dataset].nil? ? "Invalid API call" : "Invalid API call for #{params[:dataset]}")
 	end
end
