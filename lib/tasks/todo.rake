namespace :todo do
  desc "Deletes items older than seven days"
  task delete_items: :environment do
    Item.where("created_at <= ?", Time.now - 1.days).destroy_all
  end

end
