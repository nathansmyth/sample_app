FactoryGirl.define do
  factory :user do
    name     "Nathan Smyth"
    email    "email@nathansmyth.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
