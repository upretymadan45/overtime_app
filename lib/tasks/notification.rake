namespace :notification do
  desc "sends sms notification to employee asking them to log if they had overtime or not"
  task sms: :environment do
    puts "I am in the rake task"
  end

  desc "sends mail notification to managers(AdminUsers) each day to inform of pending overtime requests "
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end

  end

end
