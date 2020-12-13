require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
     @university = universities(:one)
     @university2 = universities(:two)
   end

   test 'should not save empty team' do
     team = Team.new
     team.save
     refute team.valid?
   end

   test 'should save valid team' do
     team = Team.new
     team.name = 'MyTeam'
     team.points = 0
     team.university = @university
     team.save
     assert team.valid?
   end

   test 'should not save team with no university' do
     team = Team.new
     team.name = "MyTeam"
     team.points = 0
     team.save
     refute team.valid?
   end

   test 'should not save team with no points' do
     team = Team.new
     team.name = "MyTeam"
     team.university = @university
     team.save
     refute team.valid?
   end

   test 'should not save team with negative points' do
     team = Team.new
     team.name = "MyTeam"
     team.university = @university
     team.points = -1
     team.save
     refute team.valid?
   end

   test 'should not save team with incorrect points datatype' do
     team = Team.new
     team.name = "MyTeam"
     team.university = @university
     team.points = "points"
     team.save
     refute team.valid?
   end

   test 'should save teams with same university' do
     team1 = Team.new
     team1.name = 'MyTeam1'
     team1.points = 0
     team1.university = @university
     team1.save
     assert team1.valid?

     team2 = Team.new
     team2.name = 'MyTeam2'
     team2.points = 0
     team2.university = @university
     team2.save
     assert team2.valid?
   end

   test 'should save teams with different university' do
     team1 = Team.new
     team1.name = 'MyTeam1'
     team1.points = 0
     team1.university = @university
     team1.save
     assert team1.valid?

     team2 = Team.new
     team2.name = 'MyTeam2'
     team2.points = 0
     team2.university = @university2
     team2.save
     assert team2.valid?
   end
end
