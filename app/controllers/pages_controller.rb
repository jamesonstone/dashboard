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


    # THESE ARE AUTOMATED
    # @android_flag = find_last_submission(1)
    # @android_flag_status = find_status(1)
    # @android_flag_color = set_status_color(1)
    #
    # @ios_flag = find_last_submission(2)
    # @ios_flag_status = find_status(2)
    # @ios_flag_color = set_status_color(2)

    # Find the most recent results from each project

    @android_auto = find_last_submission(3)
    @android_auto_status = find_status(@android_auto.status)
    @android_auto_color = set_status_color(@android_auto.status)

    @ios_auto = find_last_submission(4)
    @ios_auto_status = find_status(@ios_auto.status)
    @ios_auto_color = set_status_color(@ios_auto.status)

    @web = find_last_submission(5)
    @web_status = find_status(@web.status)
    @web_color = set_status_color(@web.status)

    @local = find_last_submission(6)
    @local_status = find_status(@local.status)
    @local_color = set_status_color(@local.status)

    @third_party = find_last_submission(7)
    @third_party_status = find_status(@third_party.status)
    @third_party_color = set_status_color(@third_party.status)

    # find additional third parties
    @new_third_party = find_last_submission(8)



  end

end
