FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "some rationale"
    overtime_request 4.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.tomorrow
    rationale "some other rationale"
    overtime_request 4.5
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.tomorrow
    rationale "some other rationale"
    overtime_request 4.5
    non_authorized_user
  end

end
