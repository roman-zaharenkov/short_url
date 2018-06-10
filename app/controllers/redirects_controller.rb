class RedirectsController < ApplicationController
  def index
    @link = Link.find_by!(token: params[:token])
    redirect_to @link.target_url
  end
end
