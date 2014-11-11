class Employee < Account
	has_many :time_entries
	has_and_belongs_to_many :projects

	def total_hours
		time_entries.sum(:time)
	end

	def log_time(amount, customer)
		TimeEntry.create(time: amount, employee: self, account: customer)
	end
end
