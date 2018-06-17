class BlogsChannel < ApplicationCable::Channel
  def subscribed #required for actioncable
    stream_from "blogs_#{params['blog_id']}_channel"
  end

  def unsubscribed #required for actioncable
  end

  def send_comment(data)
    current_user.comments.create!(content: data['comment'], blog_id: data['blog_id'])
  end
end