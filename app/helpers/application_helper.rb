module ApplicationHelper
  
  def flash_class(type)

    case type.to_sym
    when :notice
        "alert alert-success"

    when :alert
        "alert alert-danger"

    else
        "alert alert-info"
    end

  end

end
