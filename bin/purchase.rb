#!/usr/bin/env ruby

require 'rubygems'
require 'active_merchant'

ActiveMerchant::Billing::Base.mode = :test

gateway = ActiveMerchant::Billing::PaypalExpressGateway.new(
  :login => "adriansky-facilitator_api1.gmail.com",
  :password => "1379370829",
  :signature => "AYOKMnFCGKmD5szgO.MRXdYnQZTHAB2Ebn5XorU0W6-rVT1iu.OP1UGB"
)

opts = {
	ip: '127.0.0.1',
	:return_url => 'http://example.com',
	:cancel_return_url => 'http://example.com'
}

res = gateway.setup_authorization(500, opts)

