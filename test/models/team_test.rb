require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
     @university = universities(:one)
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
end
