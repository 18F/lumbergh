# https://gist.github.com/afeld/362e064243a5bf293895
class GithubClient
  attr_reader :client

  def initialize
    @client = Octokit::Client.new(access_token: ENV.fetch('GITHUB_TOKEN'))
  end

  def org_name
    # TODO make this configurable
    '18F'
  end

  def teams
    self.client.organization_teams(self.org_name)
  end

  def staff_team_name
    # TODO make this configurable
    '18f'
  end

  def staff_team
    self.teams.find { |team| team.slug.downcase == self.staff_team_name.downcase }
  end

  def staff_team_members
    self.client.team_members(self.staff_team.id)
  end

  def staff_team_usernames
    self.staff_team_members.map(&:login)
  end
end
