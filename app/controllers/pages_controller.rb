class PagesController < ApplicationController
  def index
  end

  def create
    @project = Project.create(name: params[:name], description: params[:description], start: params[:start], end: params[:end], state: params[:state])
  end

  def dashboard
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else
      @projects = Project.all
    end
  end
end
