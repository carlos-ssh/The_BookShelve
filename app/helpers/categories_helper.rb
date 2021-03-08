module CategoriesHelper
  def last_post_image(cat)
    a = post_last(cat)
    if a.nil?
      image_url('default.jpg')
    else
      url_for(a.image)
    end
  end

  def last_post_title(cat)
    a = post_last(cat)
    if a.nil?
      "Write the first post for #{cat.name
			                                } Category"
    else
      a.title
    end
  end

  def post_last(cat)
    cat.posts.last
  end

  def most_voted_partial
    if !@most_voted.nil?
      (render 'main_post', most_voted: @most_voted).html_safe
    else
      (render partial: 'main_default').html_safe
    end
  end

  def order(index)
    if (index % 4) >= 2
      'order-1'
    else
      'order-2'
    end
  end
end
