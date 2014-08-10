namespace :db do
desc "Fill database with sample data"
task populate: :environment do
admin = Customer.create!(firstname: "Adminwriter ",
lastname: "Anto",
email: "admin4writer@gmail.com",
password: "0limitation",
password_confirmation: "0limitation",
country: "Kenya",
contact: "+254725253313")
admin.toggle!(:admin)
end
end
