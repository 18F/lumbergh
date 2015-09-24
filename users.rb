require_relative 'lib/lumbergh'

team_api_usernames = TeamApi.github_usernames

github_client = GithubClient.new
github_team_usernames = github_client.staff_team_usernames

puts "Missing from @#{github_client.org_name}/#{github_client.staff_team_name}:"
(team_api_usernames - github_team_usernames).each do |username|
  puts username
end

puts "\n\nMissing from the Team API:"
(github_team_usernames - team_api_usernames).each do |username|
  puts username
end
