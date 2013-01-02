namespace :demo do

  desc 'change date randomly'
  task :mess_data => :environment do
    # make some pending
    TranslationCenter::Translation.all.map(&:id).sample(1000).each do |translation|
      translation.update_attribute(:status, 'pending')
    end

    # destory some
    TranslationCenter::Translation.all.map(&:id).sample(500).each do |translation|
      translation.destroy
    end
  end

end