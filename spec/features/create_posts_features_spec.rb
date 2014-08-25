require 'rails_helper'

describe 'creating posts' do 

	context 'logged out' do 
		it 'should prompt the user to sign in' do 
			visit '/posts'
			click_link 'Add post'
			expect(page).to have_content 'Sign in'
		end 
	end 

	context 'logged in' do 
		before do
			nikesh = User.new(email: 'n@n.com', password: '12345678', password_confirmation: '12345678')
			login_as nikesh
		end 
	end 

	context 'a valid post' do 
		it 'prompts the user to fill out a form, then displays a new post' do 
			visit '/posts'
			click_link 'Add post'
			post = create(:post)

			click_button 'Create Post'

			expect(page).to have_content 'Hello'
		
		end 
	end 
end 