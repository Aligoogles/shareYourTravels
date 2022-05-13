require "application_system_test_case"
require "rspec/rails"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "visiting the user/edit page" do
    visit "/users/edit_url"
    assert_selector "h1", text: "Edit your profile"
  end

  test "should create post" do
    visit posts_url
    click_on "New post"

    fill_in "Author", with: @post.author
    fill_in "Comment", with: @post.comment
    fill_in "Post date", with: @post.post_date
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "should update Post" do
    visit post_url(@post)
    click_on "Edit this post", match: :first

    fill_in "Author", with: @post.author
    fill_in "Comment", with: @post.comment
    fill_in "Post date", with: @post.post_date
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "should destroy Post" do
    visit post_url(@post)
    click_on "Delete this post", match: :first

    assert_text "Post was successfully deleted"
  end
end
