FactoryGirl.define do
  factory :account do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    confirmed_at Date.today
    
    trait :with_crm do
      crms { build_list :crm, 1, :rest }
    end

    trait :with_rest_crm do
      crms { build_list :crm, 1, :rest }
    end

    trait :with_hubspot_crm do
      crms { build_list :crm, 1, :hubspot }
    end

    trait :with_2_crms do
      crms { build_list :crm, 2, :sequence }
    end

    trait :with_3_crms do
      crms { build_list :crm, 3, :sequence }
    end

    trait :with_2_same_crms do
      crms { build_list :crm, 2, :rest }
    end

  end
end
