namespace :db do
	desc 'Erase and fill database'
	task populate: :environment do
		require 'faker'
		require 'populator'

		Account.delete_all

		Account.populate 50 do |person|
			person.name  = Faker::Name.name
			person.email = Faker::Internet.email
			person.type  = 'Customer'
		end

		Account.populate 5 do |person|
			person.name  = Faker::Name.name
			person.email = Faker::Internet.email
			person.type  = 'Employee'
		end


	end 
end