class TasksController < ApplicationController

	def show
		@task = Task.find(params[:id])
		
		@product = Product.new
		
	end	

	def create
		@task = Task.create(task_params)

		if @task.task_type_id == 1 #compulsory
			#create task and product with the same name
			redirect_to offer_path(@task.offer_id)
		elsif @task.task_type_id == 2 || 3

			redirect_to task_path(@task, :no_products => task_params[:no_products])
		end	
	end


	def new
		@task = Task.new
	end

	def destroy
	@task = Task.find(params[:id])
    @task.destroy
    	respond_to do |format|
      		format.html { redirect_to offer_path(@task.offer_id), notice: 'Task was successfully destroyed.' }
      	end
    end

    private


    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :offer_id, :task_type_id, :on_switch, :quota, :no_products)
    end
  
end
