require 'spec_helper'

describe ProductsController do
	context 'when updating product' do
		let(:user) { FactoryGirl.create :user }
		let(:creator) { FactoryGirl.create :user }
		let(:product) { FactoryGirl.create :product, user: creator }

		it 'can\'t update if is not the user creator' do
			sign_in user
			Product.any_instance.should_not_receive(:update).with({ 'title' => 'hola' })
			put :update, { id: product.id, product: { title: 'hola' } }
		end

		it 'can update if is the user creator' do
			sign_in creator
			Product.any_instance.should_receive(:update).with({ 'title' => 'hola' })
			put :update, { id: product.id, product: { title: 'hola' } }
		end
	end
end