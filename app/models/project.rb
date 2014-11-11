class Project < ActiveRecord::Base
  belongs_to :customer
  has_and_belongs_to_many :employees

  validates :name, presence: true, length: {in: 1..70, message: "Please. use a decent name"}, uniqueness: true
end
