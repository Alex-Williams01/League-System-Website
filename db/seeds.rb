# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seed1 = University.where(name: 'University of Surrey').first
seed1.delete if seed1
universities = University.create([name:'University of Surrey', address:'Stag Hill, University Campus, Guildford GU2 7XH'])
