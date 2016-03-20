class Stakeholder < ActiveRecord::Base
  has_many :topics, through: :topic_association
end
