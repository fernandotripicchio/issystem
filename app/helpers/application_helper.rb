module ApplicationHelper
  def label_column(text)
    "<label><strong>#{text}</strong></label>".html_safe
  end
end
