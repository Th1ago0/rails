require "test_helper"

class SubscriberMailerTest < ActionMailer::TestCase
  test "new_posts" do
    mail = SubscriberMailer.new_posts
    assert_equal "New posts", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
