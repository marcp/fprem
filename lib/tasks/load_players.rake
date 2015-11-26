namespace :players do

  desc "Load players from .json"
  task :load => :environment do
    file = File.read('db/seeds/players.json')
    data = JSON.parse( file )

    data['elInfo'].each do |player|
      if !player.nil?
        fpl_id = player[0]
        first_name = player[3]
        last_name = player[4]
        web_name = player[5]

        Player.create!(
          fpl_id: fpl_id,
          first_name: first_name,
          last_name: last_name,
          web_name: web_name
        )
      end
    end

    nil
  end

end
