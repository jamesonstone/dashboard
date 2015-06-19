class PagesController < ApplicationController


  def root
  	url = 
  	'http://1111096:********@ios-buildmaster.ihrdev.com/job/UI-Automation/lastBuild/api/json'

  	response = HTTParty.get(url, :verify => false)
  	@result = response['result']
  	@display_name = response['fullDisplayName']
  	@current_time = Time.now.strftime("(last checked %m/%d/%Y | %H:%M)")





  end

end
