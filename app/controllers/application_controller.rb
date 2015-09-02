class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def find_last_submission(proj_code)
    if proj_code == 8
      # get the list of all the third party projects
      return Record.where(project_code: proj_code)
    end
    # else just return the last project
    return Record.where(project_code: proj_code).last
  end

  def find_status(proj_status)
    return proj_status ? "Pass" : "Fail"
  end

  def set_status_color(proj_status)
    return proj_status ? "green" : "red"
  end

  def map_project_num_to_name(record)
    # create directory of projects
    code_to_name_dict = {
        1 => "Android Flagship",
        2 => "iOS Flagship",
        3 => "Android Auto",
        4 => "iOS Auto",
        5 => "Web",
        6 => "Local",
        7 => "Third Parties",
        8 => "Add New Project" ##
    }

    if record.project_code == 8
      return record.project_name
    else
      return code_to_name_dict[record.project_code]
    end
  end

end
