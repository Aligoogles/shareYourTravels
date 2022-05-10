require "test_helper"
require "rspec/rails"

class PostTest < ActiveSupport::TestCase

  setup do
    @post = Post.new
    @paris_post = posts(:post_1)
    @italy_post = posts(:post_2)
  end


  test "should save post" do
    assert @post.save
  end

  test "should find post" do
    @post.author = "Ali"
    @post.comment = "I went to Paris"
    @post.save

    expected_post = Post.find(@post.id)
    assert_equal(expected_post.author, @post.author)
    assert_equal(expected_post.comment, @post.comment)
  end

  test "should delete post" do
    @post.save
    assert_difference("post.count", -1) do
      @post.destroy
    end

  end

  test "should update post" do

    paris_update_comment = "Feed Misty"
    @paris_post.update({
      comment: paris_update_comment
    })
    assert_equal(paris_update_comment, @paris_post.comment)
  end

  test "should print author when true" do
    @paris_post = posts(:post_1)
    assert_equal(@paris_post.get_post_status(), "Author 1")
  end

  test "should print author when true" do
    assert_equal(@italy_post.get_post_status(), "Author 2")
  end

end
