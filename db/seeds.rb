
side = ["Men","Women"]
voice = ["Primera","Segunda","Bass","Tenor"]
@user = User.create(first_name: "Josue", last_name: "Aceves", email: "josueaceves.ja@gmail.com", password: "password")
@choir_sm = @user.choirs.create(choir_name: "Santa Maria youth", choir_location: "SM")

@attendance = @choir_sm.attendances.create(prayer: "5am")
20.times do
  @member = @choir_sm.choir_members.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, side: side.sample, voice: voice.sample)
end
