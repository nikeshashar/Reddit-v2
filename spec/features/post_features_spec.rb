require 'rails_helper' 

describe 'posts' do 
	context 'no posts' do 
		it 'should display no posts' do
			visit '/posts'
			expect(page).to have_content('No posts yet')
		end 
	end 

	context 'when there are posts' do 
		it 'should display the posts' do 
			post = Post.new(title: 'Post', content: 'Hello')
			visit '/posts'
			expect(page).to have_content 'Hello'
		end 
	end 
end