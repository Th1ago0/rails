class NewPostsNotificationJob < ApplicationJob
  queue_as :notification

  def perform()
      subscribers = [{email: "lucas@gmail.com", name: "lucas"},{email: "maria@gmail.com", name: "maria"}]
      posts = Post.where(publish_at: (Time.now - 1.week)..).select(:title)
      subscribers.each do |subscriber|
          SubscriberMailer.with(subscriber: subscriber, posts: posts).new_posts.deliver_now
      end
  end
end
