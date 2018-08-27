# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

init_date = Date.new(1900,1,1)
end_date = Date.new(2050,12,31)
#end_date = Date.new(1900,2,28)
semester = 1
is_holiday = false
#months = ["none","january","february","march","april","march","june","july","august","september","october","november","december"]

#Timing.all.each do |x|
#    x.update(:month => months[x.month.to_i])
#end

# ........................................................................................
# .................................... Fechas festivo ....................................
holidays = Hash.new
holidays[[1,1]] = true
holidays[[1,8]] = true
holidays[[3,19]] = true
holidays[[3,29]] = true
holidays[[3,30]] = true
holidays[[5,1]] = true
holidays[[5,14]] = true
holidays[[6,4]] = true
holidays[[6,11]] = true
holidays[[7,2]] = true
holidays[[7,20]] = true
holidays[[8,7]] = true
holidays[[8,20]] = true
holidays[[10,15]] = true
holidays[[11,5]] = true
holidays[[11,12]] = true
holidays[[12,8]] = true
holidays[[12,25]] = true

(init_date..end_date).each do |x|
    if x.month <= 6
        semester = 1
    else
        semester = 2
    end
    
    if holidays[[x.month,x.day]]
        is_holiday = true
    else
        is_holiday = false
    end
    
    Timing.create(:year => x.year,:semester => semester,:month => x.strftime("%B"),:day => x.day,:name => x.strftime("%A"),:holiday => is_holiday)

end