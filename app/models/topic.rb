class Topic < ActiveRecord::Base
  has_many :topic_associations
  has_many :stakeholders, through: :topic_associations
end
