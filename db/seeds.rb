# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

init_date = Date.new(1900,1,1)
end_date = Date.new(2050,12,31)
semester = 1

(init_date..end_date).each do |x|
    if x.month <= 6
        semester = 1
    else
        semester = 2
    end
    Timing.create(:year => x.year,:semester => semester,:month => x.month,:day => x.day)
end