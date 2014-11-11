class Customer < Account
	has_many :time_entries

	# scope :premier, ->(name) { where("name like ?", name + "%")}
	scope :newest, ->{ order("created_at DESC")}
	def self.premier
		where('name like ?', 'a%')
	end
end
