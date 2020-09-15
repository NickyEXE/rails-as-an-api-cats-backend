class Cat < ApplicationRecord
  belongs_to :team
  scope :alphabetical, -> {order(:name)}
  validates :name, :actor, :description, :image, presence: true


  def team_name=(name)
    team = Team.find_or_create_by(name: name)
    self.team = team
  end

  def team_name
    team.name
  end

  def give_ten_dollars
    self.update(tip: self.tip + 10)
  end

end
