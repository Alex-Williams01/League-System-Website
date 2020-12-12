require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should return contact email" do
     mail = ContactMailer.contact_email("alex@me.com", "Alex", "123456789", @message = "Hello")
     assert_equal ['info@nationalleague.com'], mail.to
     assert_equal ['info@nationalleague.com'], mail.from
   end
end
