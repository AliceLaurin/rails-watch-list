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
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def params_list
    params.require(:list).permit(:name, :picture)
  end

  def set_list
    @list = List.new
  end
end
