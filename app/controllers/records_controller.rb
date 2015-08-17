class RecordsController < ApplicationController

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
  end

  def create
    @record = Record.new(record_params)
    @record.save
    redirect_to @record
  end

  private
    def record_params
      params.require(:records).permit(:project_name, :status, :comments)
    end
end
