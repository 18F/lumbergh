module TeamApi
  def self.team_data
    response = RestClient.get('https://team-api.18f.gov/public/api/team/', accept: :json)
    JSON.parse(response.body)
  end

  def self.github_usernames
    usernames = []
    self.team_data['results'].each do |user|
      if user['github']
        usernames << user['github']
      else
        if ENV['DEBUG']
          puts "#{user['full_name']} is missing a GitHub username in the Team API"
        end
      end
    end

    usernames
  end
end
