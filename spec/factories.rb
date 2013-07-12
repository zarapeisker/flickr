FactoryGirl.define do
  factory :photo do
    title "Jenn"
    url File.open(File.join(Rails.root, '/public/sample.jpg'))
  end
end