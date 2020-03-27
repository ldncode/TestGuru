module ApplicationHelper

  MESSAGE = { 'notice': 'alert alert-info', 'success': 'alert alert-success',
              'error': 'alert alert-danger', 'alert': 'alert alert-warning' }

  def flash_class(level)
    MESSAGE[level.to_sym]
  end

end


