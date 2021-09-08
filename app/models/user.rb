class User < ApplicationRecord
	has_secure_password

	validates :user_name, presence: true, uniqueness: true
	validates :password, length: 8..20
end
