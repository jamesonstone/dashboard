class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def find_last_submission(name)
    if name == 'Add New Project'
      # return the list of all third party projects
      return Record.where(project_name: name)
    end
    # else just return the last entry from the respective project
    return Record.where(project_name: name).last
  end
end
