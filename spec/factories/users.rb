FactoryBot.define do
  factory :user do
    username { |n| Faker::Games::Zelda.character }
    password { |p| Faker::Internet.password }
  end
  factory :no_pass_user do
    username { |n| Faker::Games::Zelda.character }
    password nil
  end
end




# FactoryBot.define do
#   factory :user do
#     email { |n| Faker::Internet.email }
#     password { |p| Faker::Internet.password }
#   end
# end


# FactoryBot.define do
#   factory :cat do
#     name 'Garfield'
#     color 'orange'
#     age 53
#     temperament 'sarcastic'
#   end
# end