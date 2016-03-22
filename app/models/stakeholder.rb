class Stakeholder < ActiveRecord::Base
  has_many :topic_associations
  has_many :topics, through: :topic_associations
end
