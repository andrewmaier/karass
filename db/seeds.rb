# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s1 =  Stakeholder.create({
        name: "Andrew Maier",
        email: "andrew.maier@gsa.gov",
        role: "Content enthusiast"
       });

      Topic.create( :name => "A specific law, regulation, or member of Congress.")
      Topic.create( :name => "A particular agency")
      Topic.create( :name => "Research or best practices relevant to an 18F grouplet")
      Topic.create( :name => "18F&rsquo;s relationships with vendors")
      Topic.create( :name => "A previously unreleased website")
t1 =  Topic.create( :name => "The Agile BPA")
      Topic.create( :name => "An 18F project, product, or initiative (other than Agile BPA)")
      Topic.create( :name => "Laws or regulations that govern GSA or federal employees")

ta1 = TopicAssociation.create(stakeholder: s1, topic: t1, role: "1")
