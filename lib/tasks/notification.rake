namespace :notification do
  desc "sends sms notification to employee asking them to log if they had overtime or not"
  task sms: :environment do
    puts "I am in the rake task"
  end

end
