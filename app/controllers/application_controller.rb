class ApplicationController < ActionController::Base
  before_action :set_featured
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def bi_icon(icon, options = {})
    klasses = ['bi'].append(options.delete(:class)).compact
    content_tag :svg, options.merge(class: klasses, fill: 'currentColor') do
      content_tag :use, nil, 'xlink:href' => "#{asset_path 'bootstrap-icons/bootstrap-icons.svg'}##{icon}"
    end
  end

  protected

  def set_featured
    @featured = Category.where(feature_in_navbar: true).order('name ASC')
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
  end
end
