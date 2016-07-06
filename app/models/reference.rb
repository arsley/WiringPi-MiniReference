class Reference < ActiveRecord::Base
  validates :func, :usage_code, :usage_description, :category, presence: true
end
