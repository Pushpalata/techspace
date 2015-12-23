module ApplicationHelper

  def active_klass(link_string, params_string)
    link_string.include?(params_string) ? "active" : ""
  end
  
end
