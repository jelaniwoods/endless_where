# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.create [
  {
    name: 'alice',
    born_on: 'January 1st 2001',
    time_of_birth: '1:00am',
    born_at: 'January 1st 2001 1:00am',
    age: 19,
    height_in_inches: 65.1
  },
  {
    name: 'bob',
    born_on: 'February 2nd 2002',
    time_of_birth: '2:00am',
    born_at: 'February 2nd 2002 2:00am',
    age: 18,
    height_in_inches: 66.1
  },
  {
    name: 'carol',
    born_on: 'March 3rd 2003',
    time_of_birth: '3:00am',
    born_at: 'March 3rd 2003 3:00am',
    age: 17,
    height_in_inches: 67.1
  },
  {
    name: 'doug',
    born_on: 'April 4th 2004',
    time_of_birth: '4:00am',
    born_at: 'April 4th 2004 4:00am',
    age: 16,
    height_in_inches: 68.1
  }
]
