class Topic < ActiveRecord::Base
  has_many :stakeholders, through: :topic_associations
end
