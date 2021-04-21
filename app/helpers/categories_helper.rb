module CategoriesHelper
  def last_post_image(category)
    post = post_last(category)
    if post.nil?
      image_url('default.jpg')
    else
      url_for(post.image)
    end
  end

  def last_post_title(category)
    post = post_last(category)
    if post.nil?
      "Write the first post for #{category.name} Category"
    else
      post.title
    end
  end

  def post_last(category)
    category.posts.last
  end

  def most_voted_partial
    if @most_voted.nil?
      (render partial: 'main').html_safe
    else
      (render 'post', most_voted: @most_voted).html_safe
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
