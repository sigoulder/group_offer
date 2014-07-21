class ProductsController < ApplicationController
	
	def index

	end

	def new
		#@product = Product.new
	end

	def create
		params[:name].each do |p|
			@task = Task.create(:name => p[1], :offer_id => offer_id, :offer_id => params[:offer_id], :task_type_id => params[:task_type_id])
			@task.save
		end
		redirect_to offer_path(:id => params[:offer_id])
	end


	private

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name)
    end

end
