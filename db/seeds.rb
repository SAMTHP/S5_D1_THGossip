
10.times do
	User.create(first_name: Faker::Hobbit.character, last_name: Faker::Hobbit.character)
end

100.times do
	Gossip.create(author: Faker::Hobbit.character, content: Faker::HowIMetYourMother.quote, user_id: rand(1..10))
end
