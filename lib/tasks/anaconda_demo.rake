namespace :anaconda_demo do
  desc "Clears the files uploaded over 1 hour ago"
  task :clear_aged_files => :environment do
    Post.where("created_at > ?", 1.hour.ago).destroy_all
  end
end
