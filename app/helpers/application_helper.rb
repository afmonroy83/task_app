module ApplicationHelper

  def boostrap_class(alert)
    { success: 'alert-success', error: 'alert-danger', notice: 'alert-success', warning: 'alert-warning',
      danger: 'alert-danger', alert: 'alert-danger' }[alert.to_sym]
  end

  def flash_messages(_opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{boostrap_class(msg_type.to_sym)} alert-dismissible fade show", "role"=>"alert") do
        concat message
      end)
    end
    nil
  end

  def boolean_check(value)
    content_tag :span, class: "label #{'label-success' if value}" do
      tag :i, class: "fa fa-#{value == "complete" ? 'check' : 'minus'}"
    end
  end

end
