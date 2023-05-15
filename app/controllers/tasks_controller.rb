class TasksController < ApplicationController
  before_action :task_find, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # On récupère l'id avec before_action
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params) # On créé l'enregistrement récupéré avec form
    @task.save # On enregistre dans BdD
    # On redirige vers la page show
    redirect_to task_path(@task)
  end

  def edit
    # On récupère l'id avec before_action
  end

  def update
    # On récupère l'id avec before_action
    # On récupère les données du formulaire de modification
    @task.update(task_params) # On met à jour la BdD
    # On redirige vers la page show avec les modifications
    redirect_to task_path(@task)
  end

  def destroy
    # On récupère l'id avec before_action
    # On supprime l'enregistrement avec l'id dans la BdD
    @task.destroy
    # On redirige vers la page index
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def task_find
    @task = Task.find(params[:id])
  end
end
