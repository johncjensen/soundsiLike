module ApplicationHelper

  def check_if_artwork_present(value)
    if value.artwork_url.nil?
      "http://placehold.it/600x300/2D313D/f6f6f6&text=no+artwork"
    else
      value.artwork_url.to_s.gsub('-large', '-t500x500')
    end
  end

  def bootstrap_class_for flash_type
    case flash_type
    when :success
      "alert-success"
    when :error
      "alert-error"
    when :alert
      "alert-block"
    when :notice
      "alert-info"
    else
      flash_type.to_s
    end
  end

end
