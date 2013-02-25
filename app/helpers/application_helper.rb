module ApplicationHelper
  def full_title(page_title)
    base_title = application_name 
    page_title.empty? ? base_title : "#{base_title} | #{page_title}"
  end

  def application_name
    "AlarisTwit"
  end
end
