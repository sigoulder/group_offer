class ParticipantsTasksController < ApplicationController
	
	def index
	end 

	def show
		# This should all go in the model
		#ParticipantsTask.delete_all(:offer_id => params[:offer_id])
		params[:tasks].collect do |index, item|
			item.each do |inn, it|
				if !ParticipantsTask.exists?(:task_id => index, :participant_id => inn, :offer_id => params[:offer_id])
					@parttask = ParticipantsTask.create(:task_id => index, :participant_id => inn, :offer_id => params[:offer_id], :value => 1)
				end
			end
		end

		#perform validation here before redirect
		redirect_to offer_path(params[:offer_id])
	end 


end
