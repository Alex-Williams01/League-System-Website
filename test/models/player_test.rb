require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @team = teams(:one)
  end

  test 'should not save empty player' do
    player = Player.new
    player.save
    refute player.valid?
  end

  test 'should save valid player' do
    player = Player.new
    player.name = "myname"
    player.playtime = 0.0
    player.kd = 1.3
    player.team = @team
    player.save
    assert player.valid?
  end
end
