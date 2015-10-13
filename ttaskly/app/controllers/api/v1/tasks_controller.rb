class Api::V1::TasksController < ApplicationController
	before_action :user_exists

	def index
		tasks = @user.tasks.order("completed")
		render json: tasks

	end

	def create
		task =@user.tasks.build(task_params)
		task.save
		render json: tasks


	end

	def show
		task = @user.tasks.find_by(id: params[:id])
		unless task
			render json: {:error => "task not found"}, status: 400
			return
		end
		render json: task

	end

	def complete
		task = @user.tasks.find_by(id: params[:id])
		unless task
			render json: {:error => "task not found"}, status: 400
			return
		end
		task.complete!
		task.save
		render json: task
	end

	def user_exists
		@user = User.find_by(id: params[:user_id])
		unless @user
			render json: {error: "task not found"}, status: 400
			return
		end
	end



	private

		def task_params
			params.require(:task).permit(:name, :email)
		end

end
