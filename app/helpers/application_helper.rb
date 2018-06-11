module ApplicationHelper
  def original_url_link(link)
    link_to link.target_url, link.target_url, target: '_blank'
  end

  def short_url_link(link)
    link_to redirect_url(token: link.token), redirect_url(token: link.token), target: '_blank'
  end
end
