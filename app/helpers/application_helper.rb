module ApplicationHelper

  # def flash_class(level)
  #   case level
  #   when 'notice' then "alert alert-info"
  #   when 'success' then "alert alert-success"
  #   when 'error' then "alert alert-danger"
  #   when 'alert' then "alert alert-warning"
  #   end
  # end

  MESSAGE = { notice: 'alert alert-info', success: 'alert alert-success',
            error: 'alert alert-danger', alert: 'alert alert-warning' }

  def flash_class(level)
    MESSAGE[level]
  end

end


