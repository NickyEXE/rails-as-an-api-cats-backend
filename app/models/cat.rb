class Cat < ApplicationRecord
  belongs_to :team


  def team_name=(name)
    team = Team.find_or_create_by(name: name)
    self.team = team
  end

  def team_name
    team.name
  end

end
