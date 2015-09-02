class RecordsController < ApplicationController

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
    @proj_status = find_status(@record.status)
    @proj_name = map_project_num_to_name(@record)
  end

  def new
  end


  def new_project
  end

  def create
    @record = Record.new(record_params)
    @record.save
    redirect_to @record
  end

  private
    def record_params
      params.require(:records).permit(:project_code, :project_name, :status, :comments)
    end
end
