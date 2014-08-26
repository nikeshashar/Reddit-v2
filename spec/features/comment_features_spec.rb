require 'rails_helper'

describe 'commenting on posts' do 
	before do
		post = Post.create(title: 'Post', content: 'Hello', comment: 'This is awesome')
	end
	it 'allows users to leave comments using a form which appear alongside restaurants' do
		visit '/posts'
		click_link 'Leave a comment'
		fill_in 'Comments', with: 'This is awesome'
		click_button 'Yo!'
		expect(current_path).to eq '/posts'
		expect(page).to have_content 'This is awesome'
	end	
end