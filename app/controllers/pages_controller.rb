class PagesController < ApplicationController


  def root
    # ios_flagship_url =
    #     'http://1111096:***@ios-buildmaster.ihrdev.com/job/ios-flagship/lastBuild/api/json'
    #
    # ios_flagship_response = HTTParty.get(ios_flagship_url, :verify => false)
    # @ios_flagship_result = ios_flagship_response['result']
    # @ios_flagship_display_name = ios_flagship_response['fullDisplayName']
    # @ios_flagship_current_time = Time.now.strftime("(last checked %m/%d/%Y | %H:%M)")

    # Find the most recent results from each project
    @android_flagship = find_last_submission('Android Flagship')
    @ios_flagship     = find_last_submission('iOS Flagship')
    @android_auto     = find_last_submission('Android Auto')
    @ios_auto         = find_last_submission('iOS Auto')
    @web              = find_last_submission('Web')
    @local            = find_last_submission('Local')

    # returns list for recently added 3rd parties
    @new_third_party  = find_last_submission('Add New Project')
  end

end
