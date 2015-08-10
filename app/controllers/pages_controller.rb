class PagesController < ApplicationController


  def root
    ios_flagship_url =
        'http://1111096:***@ios-buildmaster.ihrdev.com/job/ios-flagship/lastBuild/api/json'

    ios_flagship_response = HTTParty.get(ios_flagship_url, :verify => false)
    @ios_flagship_result = ios_flagship_response['result']
    @ios_flagship_display_name = ios_flagship_response['fullDisplayName']
    @ios_flagship_current_time = Time.now.strftime("(last checked %m/%d/%Y | %H:%M)")

    android_flagship_url =
        'http://1111096:***@ios-buildmaster.ihrdev.com/job/ios-flagship/lastBuild/api/json'

    android_flagship_response = HTTParty.get(android_flagship_url, :verify => false)
    #@ios_flagship_result = android_flagship_response['result']
    @ios_flagship_display_name = android_flagship_response['fullDisplayName']
    @ios_flagship_current_time = Time.now.strftime("(last checked %m/%d/%Y | %H:%M)")


  end

  def getCurrentTime
    return Time.now.strftime("(Submitted: %m/%d/%Y | %H:%M)")
  end

end
