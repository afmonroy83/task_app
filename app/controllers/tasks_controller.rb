class TasksController < ApplicationController
  load_and_authorize_resource
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]
  before_action :authenticate_user!
  # GET /tasks
  def index
    @tasks =  Task.get_tasks(current_user).order('created_at ASC').paginate(:per_page => 5, :page => params[:page])
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: "#{t('task.task')} #{t('scaffold.successfully_created')}" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def search
    @tasks = Task.search(User.find(params[:user_id]),params[:description])
    respond_to do |format|
      format.json {render json: @tasks}
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: "#{t('task.task')} #{t('scaffold.successfully_updated')}" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: "#{t('task.task')} #{t('scaffold.successfully_destroyed')}" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:status, :description)
    end
end
