require 'spec_helper'

describe 'Product Pages' do
	context 'when new' do
		it 'unregistred users must receive sign in message' do
			visit new_product_path
			expect(page).to have_content('You need to sign in or sign up before continuing.')
			page.current_path.should_not == new_product_path
		end

		it 'registered users can create it' do
			user = FactoryGirl.create :user
			login_as user, scope: :user
			visit new_product_path
			expect(page).to_not have_content('You need to sign in or sign up before continuing.')
			page.current_path.should == new_product_path
		end
	end

	context 'when existing' do
		it 'unregistered users can see it' do
			product = FactoryGirl.create :product
			visit product_path(product)
			expect(page).to have_content product.title
			page.current_path.should == product_path(product)
		end

		context 'and is modified by' do
			let(:user) { FactoryGirl.create :user }
			let(:product) { FactoryGirl.create :product, user: user }

			it 'user who created it, he can edit it' do
				login_as user, scope: :user
				visit edit_product_path(product)
				page.current_path.should == edit_product_path(product)
			end

			it 'user who didn\'t created it, he cannot edit it' do
				other_user = FactoryGirl.create :user
				login_as other_user, scope: :user
				visit edit_product_path(product)
				page.current_path.should_not == edit_product_path(product)
			end
		end
	end
end