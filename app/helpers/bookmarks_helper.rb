module BookmarksHelper
  def bookmark_button(post)
    if !post.bookmarks.where(user_id: current_user.id).exists?
      link_to(image_tag('bookmark.svg', height: '32', width: '23', class: 'bookmark'),
              bookmarks_path(post_id: post.id, category_id: @category.id),
              method: :post).html_safe
    else
      link_to(image_tag('unbookmark.svg', height: '32', width: '23', class: 'bookmark'),
              bookmark_path(post_id: post.id, category_id: @category.id),
              method: :delete).html_safe
    end
  end
end
