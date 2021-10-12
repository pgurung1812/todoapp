module ApplicationHelper
    def sort_link(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    icon = sort_direction == "asc" ? "bi bi-caret-down" : "bi bi-caret-up"
    icon = column == sort_column ? icon : ""
    link_to "#{title} <span class='#{icon}'></span>".html_safe, {column: column, direction: direction}
    end
  
  def flash_class(level)
  bootstrap_alert_class = {
    "success" => "alert-success",
    "error" => "alert-danger",
    "notice" => "alert-info",
    "alert" => "alert-danger",
    "warn" => "alert-warning"
  }
  bootstrap_alert_class[level]
end
end
