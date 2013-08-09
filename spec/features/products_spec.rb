require 'spec_helper'

describe 'Products' do
	context 'new' do
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

	context 'existing' do
		it 'unregistered users can see it' do
			product = FactoryGirl.create :product
			visit product_path(product)
			expect(page).to have_content product.title
			page.current_path.should == product_path(product)
		end

		context 'when is modified by' do
			before :each do
				@user = FactoryGirl.create :user
				@product = FactoryGirl.create :product, user: @user
			end

			it 'users who created it they can' do
				login_as @user, scope: :user
				visit edit_product_path(@product)
				page.current_path.should == edit_product_path(@product)
			end

			it 'users who didn\'t created it cannot' do
				other_user = FactoryGirl.create :user
				login_as other_user, scope: :user
				visit edit_product_path(@product)
				page.current_path.should_not == edit_product_path(@product)
			end
		end
	end
end