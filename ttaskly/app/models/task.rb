class Task < ActiveRecord::Base
	belongs_to :users

	validates :name,	presence: true, length: {maximum: 250}
	validates :due_date, presence: true
	validates :user_id,	presence: true

	def complete!
		self.completed = true
		self
	end

	def as_json(options={})
  		super(except: [:id, :created_at, :updated_at])
	end

end
