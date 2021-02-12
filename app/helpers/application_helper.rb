module ApplicationHelper
  include Pagy::Frontend

  def flash_class(key)
    case key
    when 'notice' then 'is-success'
    when 'alert' then 'is-danger'
    end
  end
end
