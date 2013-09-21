require 'spec_helper'
require 'paperclip/matchers'

RSpec.configure do |config|
  config.include Paperclip::Shoulda::Matchers
end

describe Product do
	it { should belong_to :user }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :title }
  it { should validate_presence_of :price }
  it { should validate_numericality_of :price }
  it { should_not allow_value("-1.0").for(:price) }
  it { should validate_presence_of :stock }
  it { should validate_numericality_of(:stock).only_integer }
  it { should validate_attachment_presence :photo }
end