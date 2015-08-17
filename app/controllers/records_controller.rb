class RecordsController < ApplicationController

  def index
    @records = DashboardRecord.all
  end

  def show
    @record = DashboardRecord.find(params[:id])
  end

  def new
  end

  def create
    @record = DashboardRecord.new(record_params)
    @record.save
    # raise @record.to_s
    redirect_to client_path(@record)
  end

  private
    def record_params
      params.require(:records).permit(:project_name, :status, :comments)
    end
end
