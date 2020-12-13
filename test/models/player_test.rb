require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @team = teams(:one)
    @team2 = teams(:two)
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

  test 'should not save player with no team' do
     player = Player.new
     player.name = "myname"
     player.playtime = 0.0
     player.kd = 1.3
     player.save
     refute player.valid?
   end

   test 'should not save player with no name' do
     player = Player.new
     player.playtime = 0.0
     player.kd = 1.3
     player.team = @team
     player.save
     refute player.valid?
   end

   test 'should not save player with no playtime' do
     player = Player.new
     player.name = "myname"
     player.kd = 1.3
     player.team = @team
     player.save
     refute player.valid?
   end

   test 'should not save player with no KD' do
     player = Player.new
     player.name = "myname"
     player.playtime = 0.0
     player.team = @team
     player.save
     refute player.valid?
   end

   test 'should not save player with negative playtime' do
     player = Player.new
     player.name = "myname"
     player.playtime = -5.5
     player.kd = 1.3
     player.team = @team
     player.save
     refute player.valid?
   end

   test 'should not save player with negative KD' do
     player = Player.new
     player.name = "myname"
     player.playtime = 0.0
     player.kd = -5.2
     player.team = @team
     player.save
     refute player.valid?
   end

   test 'should not save player with wrong playtime datatype' do
     player = Player.new
     player.name = "myname"
     player.playtime = "playtime"
     player.kd = 1.3
     player.team = @team
     player.save
     refute player.valid?
   end

   test 'should not save player with incorrect KD datatype' do
     player = Player.new
     player.name = "myname"
     player.playtime = 0.0
     player.kd = "KD"
     player.team = @team
     player.save
     refute player.valid?
   end

   test 'should save players with same team' do
     player1 = Player.new
     player1.name = "myname1"
     player1.playtime = 0.0
     player1.kd = 1.3
     player1.team = @team
     player1.save
     assert player1.valid?

     player2 = Player.new
     player2.name = "myname2"
     player2.playtime = 0.0
     player2.kd = 1.3
     player2.team = @team
     player2.save
     assert player2.valid?
   end

   test 'should save players with different teams' do
     player1 = Player.new
     player1.name = "myname1"
     player1.playtime = 0.0
     player1.kd = 1.3
     player1.team = @team
     player1.save
     assert player1.valid?

     player2 = Player.new
     player2.name = "myname2"
     player2.playtime = 0.0
     player2.kd = 1.3
     player2.team = @team2
     player2.save
     assert player2.valid?
   end
end
