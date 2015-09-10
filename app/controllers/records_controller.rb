class RecordsController < ApplicationController

  @@project_names = [
      'Android Flagship',
      'iOS Flagship',
      'iOS Auto',
      'Android Auto',
      'Web',
      'Local'
  ]

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
  end


  def new_project
  end

  def create
    #create a new record
    @record = Record.new(record_params)

    #check to see if the name is a core projects
    for name in @@project_names
      if name != @record.project_name
        @record.third_party = true
      else
        @record.third_party = false
      end
    end

    #set the color based on status
    if @record.status == "Fail"
      @record.color = "red"
    else
      @record.color = "green"
    end

    #save the record
    @record.save
    #redirect to single record view (show)
    redirect_to @record
  end

  private
    def record_params
      params.require(:records).permit(:project_name, :status, :comments)
    end
end
