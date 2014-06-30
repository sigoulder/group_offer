class TasksController < ApplicationController

	def create
		@task = Task.create(name: params[:name], offer_id: params[:offer_id], type_id: params[:type_id], quota: params[:quota] )
		redirect_to offer_path(params[:offer_id])
	end
		
end
