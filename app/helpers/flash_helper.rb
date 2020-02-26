module FlashHelper
  def flash_helper
    if flash[:alert]
      render inline: "<%= content_tag :p, flash[:alert], class: 'flash alert'  %>"
    end
  end
end
