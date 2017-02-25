FactoryGirl.define do
  factory :account do
    email 'milanese.david@gmail.com'

    trait :with_crm do
      crms { build_list :crm, 1, :rest }
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
