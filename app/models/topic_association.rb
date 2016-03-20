class TopicAssociation < ActiveRecord::Base
  # constants
  ROLES = {
    :collaborator => 0,
    :approver => 1
  }

  ROLES.each_with_index do |meth, index|
    define_method("#{meth}?") { type == index }
  end

  belongs_to :stakeholder
  belongs_to :topic
end
