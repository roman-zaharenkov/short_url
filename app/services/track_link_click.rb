class TrackLinkClick
  def initialize(link, request)
    @link = link
    @request = request
  end

  def call
    Click.create({ link: @link }.merge(request_params))
  end

  private

  def request_params
    {
      user_agent: @request.user_agent,
      ip: @request.remote_ip,
      referer: @request.referer
    }
  end
end
