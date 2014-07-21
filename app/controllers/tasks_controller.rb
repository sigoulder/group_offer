class TasksController < ApplicationController

	def show
		@task = Task.find(params[:id])
		
		@product = Product.new
		
	end

	def create
		#puts "TASK ID: #{params[:task][:task_type_id]}"
		type_id = params[:task][:task_type_id].to_i

		if type_id == 1 # Compulsory

			#create task and product with the same name
			@task = Task.create(task_params)
			redirect_to offers_path(params[:task][:offer_id])

		elsif type_id == 2 # Optional
			
			# this redirects to show.html.erb view, where the task logic happens
			redirect_to task_path(@task, 
				:no_products => task_params[:no_products], 
				:id => task_params[:offer_id])

		elsif type_id == 3 #Either-Or

		else 
			redirect_to offer_path(params[:task][:offer_id]), notice: 'Something went wrong'
		end		
	end

	def new
		@task = Task.new
		#redirect_to offer_path(@task.offer_id)
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
