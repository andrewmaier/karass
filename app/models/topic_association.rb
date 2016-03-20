class TopicAssociation < ActiveRecord::Base
  belongs_to :stakeholder
  belongs_to :topic
end
