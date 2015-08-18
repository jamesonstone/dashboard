class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def find_last_submission(proj_num)
    return Record.where(project_name: proj_num).last
  end

  def find_status(proj_status)
    return proj_status ? "Pass" : "Fail"
  end

  def set_status_color(proj_status)
    return proj_status ? "green" : "red"
  end

  def map_project_num_to_name(proj_num)
    if proj_num == "1"
      return "Android Flagship"
    elsif proj_num == "2"
      return "iOS Flagship"
    elsif proj_num == "3"
      return "Android Auto"
    elsif proj_num == "4"
      return "iOS Auto"
    elsif proj_num == "5"
      return "Web"
    elsif proj_num == "6"
      return "Local"
    elsif proj_num == "7"
      return "Third Parties"
    end


  end

end
