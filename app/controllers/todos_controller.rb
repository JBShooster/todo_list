class TodosController < ApplicationController
  def index
    @todos = session[:todos] ||= []
  end
  def create
    session[:todos] << params[:task]
    redirect_to '/todos'
  end

  def delete
    session[:todos] = nil
    redirect_to '/todos'
  end

  #BONUS
  def delete_one
    session[:todos].delete(params[:task])
    redirect_to '/todos'
  end
end
