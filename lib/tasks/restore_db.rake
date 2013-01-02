namespace :heroku do

  desc 'restores db of heroku to fixed state (no spam)'
  task :restore_db => :environment do
    last_restore = RestoreDate.first.last_restore
    period = RestoreDate.first.period
    if ((Time.now - last_restore) / 1.hour).round >= period 
      RestoreDate.first.update_attribute(:last_restore, DateTime.now)
      puts 'Restoring db'
      `heroku pgbackups:restore HEROKU_POSTGRESQL_CYAN --confirm translation-center`
      puts 'Restarting server'
      `heroku restart --app translation-center`
    end
  end

end