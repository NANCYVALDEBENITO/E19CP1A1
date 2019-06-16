class User < ApplicationRecord
	has_many :users_projects
	has_many :projects, through: :users_projects , dependent: :destroy
end
