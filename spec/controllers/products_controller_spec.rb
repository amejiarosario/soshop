require 'spec_helper'

describe ProductsController do
	let(:user) { FactoryGirl.create :user }
	let(:creator) { FactoryGirl.create :user }
	let(:product) { FactoryGirl.create :product, user: creator }

	context 'when updating product' do
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

	context 'when destroy product' do
		it 'can\'t delete if is not the user creator' do
			sign_in user
			Product.any_instance.should_not_receive(:destroy)
			delete :destroy, { id: product.id }
		end

		it 'can delete if is the user creator' do
			sign_in creator
			Product.any_instance.should_receive(:destroy)
			delete :destroy, { id: product.id }
		end
	end
end