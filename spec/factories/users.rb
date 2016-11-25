FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
  factory :user do
    first_name "MM"
    last_name "Uprety"
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "admin"
    last_name "user"
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end