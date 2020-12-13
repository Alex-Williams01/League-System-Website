require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @team = teams(:one)
    @team2 = teams(:two)
    @team3 = teams(:three)
    @team4 = teams(:four)
  end

  test 'should not save empty match with no match time' do
     match = Match.new
     match.save
     refute match.valid?
   end

   test 'should not save match with no teams' do
     match = Match.new
     match.match_time = DateTime.new(2020, 12, 8, 22, 35, 0)
     match.save
     refute match.valid?
   end

   test 'should not save match with less than 2 teams' do
     match = Match.new
     match.match_time = DateTime.new(2020, 12, 8, 22, 35, 0)
     match.teams = [@team]
     match.save
     refute match.valid?
   end

   test 'should not save match with more than 2 teams' do
     match = Match.new
     match.match_time = DateTime.new(2020, 12, 8, 22, 35, 0)
     match.teams = [@team, @team2, @team3, @team4]
     match.save
     refute match.valid?
   end

   test 'should save valid match' do
     match = Match.new
     match.match_time = DateTime.new(2020, 12, 8, 22, 35, 0)
     match.teams = [@team, @team2]
     match.save
     assert match.valid?
   end

   test 'should save two matches with same match time' do
     match = Match.new
     match.match_time = DateTime.new(2020, 12, 8, 22, 35, 0)
     match.teams = [@team, @team2]
     match.save
     assert match.valid?

     match2 = Match.new
     match2.match_time = DateTime.new(2020, 12, 8, 22, 35, 0)
     match2.teams = [@team3, @team4]
     match2.save
     assert match2.valid?
   end
end
