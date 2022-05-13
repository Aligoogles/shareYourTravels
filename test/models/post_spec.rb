require 'rails_helper'

Rspec.describe Post, type: :model do
    current_user = User.first_or_create(:email: 'ali123@gmail.com', password: '1234567', password_confirmation: '1234567')
    it 'has comment' do
        post = Post.new(
            author: current_user,
            date: 0,
            comment: ''
        )

        expect(post).to_not be_valid
        post.comment = 'has comment'
        expect(post).to_not be_valid
    end

    it 'has date' do
    end

    it 'has author' do
    end
end