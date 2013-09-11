require 'spec_helper'

describe 'Product' do
	let(:user) { FactoryGirl.create :user }
	let(:product) { FactoryGirl.create :product, user: user }

	context 'on creation' do
		it 'unregistred users must receive sign in message' do
			visit new_product_path
			expect(page).to have_content('You need to sign in or sign up before continuing.')
			page.current_path.should_not == new_product_path
		end

		it 'registered users can create it' do
			login_as user, scope: :user
			visit new_product_path
			expect(page).to_not have_content('You need to sign in or sign up before continuing.')
			page.current_path.should == new_product_path
		end
	end

	context 'when existing and' do
		context 'when user is unregistered' do
			before :each do
				visit product_path(product)
			end

			it 'he can see it' do
				page.current_path.should == product_path(product)
			end

			it 'doesn\'t have admin buttons' do
				expect(page).to_not have_link('Back')
				expect(page).to_not have_link('Delete')
				expect(page).to_not have_link('Edit')
			end

			it 'has purchase link' do
				expect(page).to have_link('Buy Now')
			end
		end

		context 'when user is regsitered' do
			before do
				login_as user, scope: :user
				visit product_path(product)
			end

			it 'can see the admin buttons' do
				expect(page).to have_link('Back')
				expect(page).to have_link('Delete')
				expect(page).to have_link('Edit')
			end

			it 'can share product on facebook' do
				expect(page).to have_link('share on facebook')
			end
		end

		context 'and is modified by' do
			context 'user who created it' do
				before :each do
					login_as user, scope: :user
				end

				it 'he can edit it' do
					visit edit_product_path(product)
					page.current_path.should == edit_product_path(product)
				end

				it 'doesn\'t have admin buttons' do
					visit product_path(product)
					expect(page).to have_link('Back')
					expect(page).to have_link('Delete')
					expect(page).to have_link('Edit')
				end
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