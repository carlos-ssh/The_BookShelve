module VotesHelper
  def vote_button(post)
    if !post.votes.where(user_id: current_user.id).exists?
      link_to(image_tag('vote.svg', height: '32', width: '23', class: 'vote'),
              votes_path(post_id: post.id,
                        category_id: @category.id), method: :post).html_safe
    else
      link_to(image_tag('unvote.svg', height: '32', width: '23', class: 'vote'),
              vote_path(post_id: post.id,
                        category_id: @category.id), method: :delete).html_safe
    end
  end
end
