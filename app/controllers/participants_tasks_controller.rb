class ParticipantsTasksController < ApplicationController
	
	def index
	end 

	def show
		# This should all go in the model
		params[:tasks].collect do |index, item|

			item.each do |inn, it|

				if !ParticipantsTask.exists?(:task_id => index, :participant_id => inn, :offer_id => params[:offer_id])
					#create
					@parttask = ParticipantsTask.create(:task_id => index, :participant_id => inn, :offer_id => params[:offer_id], :value => it)
				else
					#@fin = ParticipantsTask.find(:task_id => index, :participant_id => inn, :offer_id => params[:offer_id])
					#@fin.save
					puts "Right here #{@fin.id}"
				end
					#update
					# @fin.each do |pt|
					# 	puts "Task id: #{pt.task_id}, Participant id: #{pt.participant_id}, Value: #{pt.value}"
					# end
			end
			
		end

		#perform validation here before redirect
		redirect_to offer_path(params[:offer_id])
	end 


end
