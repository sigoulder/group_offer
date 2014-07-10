class ProductsController < ApplicationController
	
	def index

	end

	def new
		@product = Product.new
	end

	def create
		params[:name].each do |p|
			@prod = Product.create(:name => p[1])
			@prod.save
			@producttask = ProductsTask.create(:product_id => @prod.id, :task_id => params[:task_id])
		end
		redirect_to offer_path(:id => 53)
	end


	private

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name)
    end

end
