class RedirectsController < ApplicationController
  def index
    @link = Link.find_by!(token: params[:token])
    TrackLinkClick.new(@link, request).call
    redirect_to @link.target_url
  end
end
