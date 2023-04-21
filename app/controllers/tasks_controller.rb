class TasksController < ApplicationController
    def new
        @tasks = Task.all
    end
    def show
        task = Task.find(params[:id])
        task.destroy
        redirect_to root_path
    end
    def create
        # @task = Task.new(description: params[:task][:description], status: params[:task][:status])
        @task = Task.new(params.require(:task).permit(:description, :status))
        @task.save
        redirect_to root_path
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        @task.update(params.require(:task).permit(:description, :status))
        redirect_to root_path
    end

    def destroy
        task = Task.find(params[:id])
        task.destroy
        redirect_to root_path
    end
end
