require 'active_model'

class User < ActiveRecord::Base
	include ActiveModel::Model
	
	attr_reader :username, :password
	
	@@users = []
	
	def initialize(opts={})
		@username=opts[:username]
		@artist=opts[:password]
	end
	
	def create(params= {})
		@@users << User.new(params)
	end
	
	def self.all
		@@users
	end
	
	#def delete()
end
