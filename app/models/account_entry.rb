class AccountEntry < ActiveRecord::Base
	belongs_to :account

	validates :account_id, presence: true
	validates_associated :account

	state_machine :state, initial: :submitted do
		
		event :approve do
			transition submitted: :approved
		end

		event :reject do
			transition submitted: :rejected
		end
	end
end
