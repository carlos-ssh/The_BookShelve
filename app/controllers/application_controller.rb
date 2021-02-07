class ApplicationController < ActionController::Base
  before_action :set_featured
  helper_method :is_admin!
  
  def set_featured
    @featured = Category.where(feature_in_navbar: true).order('name ASC')
  end
  
  def is_admin!
    unless current_user&.admin
      redirect_to root_path
    end
  end

  def bi_icon(icon, options = {})
    klasses = ["bi"].append(options.delete(:class)).compact
    content_tag :svg, options.merge(class: klasses, fill: "currentColor") do
      content_tag :use, nil, "xlink:href" => "#{ asset_path 'bootstrap-icons/bootstrap-icons.svg' }##{icon}"
    end
  end
end
