# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s1 = Stakeholder.create(name:'Andrew')
t1 = Topic.create(name: '18F')
ta1 = TopicAssociation.create(stakeholder: s1, topic: t1)
