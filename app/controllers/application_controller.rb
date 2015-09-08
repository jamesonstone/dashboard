class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with :exception

def find_last_submission(name)
  # just return the last entry from the respective project
  @l = Record.where(project_name: name).last
  set_color_from_status(@l)
  return @l
end


def find_additional_projects()
  # return the list of all third party projects
  @u = Record.where(third_party: true)

  for items in @u
    set_color_from_status(items)
  end

  return @u
end


# this method sets the color based
def set_color_from_status(project_obj)
  if project_obj.status == "pass"
    project_obj.color = "green"
  else
    project_obj.color = "red"
  end
end

end
