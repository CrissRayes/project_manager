class PagesController < ApplicationController
  def index
  end

  def create
    Project.create(name: params[:name], description: params[:description], start: params[:start], end: params[:end], state: params[:state])
  end

  def dashboard
  end
end
