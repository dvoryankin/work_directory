# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
positions = Position.create([{ title: 'Doctor' },
                             { title: 'Engineer' },
                             { title: 'Mechanic' },
                             { title: 'Lawyer' },
                             { title: 'Driver' },
                             { title: 'Manager' }])


40.times do
  Employee.create(name: "#{(((0...8).map { (65 + rand(26)).chr }.join)+' ') * 3}",
                   dateofbirth: "#{Date.today - rand(40).years}",
                    position_id: rand(1..5)) 
end

