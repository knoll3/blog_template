require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  def setup
    @post = Post.new(content: "Lorem ipsum")
  end
  
  test "should be valid" do 
    assert @post.valid?
  end
  
  test "content should be present" do 
    @post.content = "    "
    assert_not @post.valid?
  end
end