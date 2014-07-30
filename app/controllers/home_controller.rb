class HomeController < ApplicationController
  def index
    # http://www.meetup.com/meetup_api/docs/2/open_events/
    @zip = params[:zip] || '94110'
    @text = params[:text] || 'soccer'

    @results = MEETUP.fetch(
      :open_events,
      {
        zip: @zip,
        text: @text
      }
    )
  end
end
