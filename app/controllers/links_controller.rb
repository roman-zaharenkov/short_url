class LinksController < ApplicationController
  respond_to :html

  before_action :load_latest, only: %i[new create]

  def new
    @link = Link.new
    respond_with(@link)
  end

  def create
    @link = CreateLink.new(link_params).call
    respond_with(@link)
  end

  def show
    @link = Link.find(params[:id])
    respond_with(@link)
  end

  private

  def link_params
    params.require(:link).permit(:target_url)
  end

  def load_latest
    @latest_links = Link.latest.to_a
  end
end
