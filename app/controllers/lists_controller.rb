class ListsController < ApplicationController
  before_action :set_list, only: %i[new]

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
  end

  def create
    @list = List.new(params_list)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def params_list
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.new
  end
end
