FactoryGirl.define do
  factory :crm do
    trait :rest do
      name 'Rest'
    end

    trait :hubspot do
      name 'Hubspot'
    end

    trait :sequence do
      sequence(:name) { |i| names = %w{rest hubspot rex "agent plus" "agent box"}; names[i%names.length] }
    end
  end
end
