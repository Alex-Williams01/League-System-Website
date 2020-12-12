require 'test_helper'

class UniversityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save empty university' do
     uni = University.new
     uni.save
     refute uni.valid?
   end

   test 'should save valid uni' do
     uni = University.new
     uni.name = "My Uni"
     uni.address = "Some Address"
     uni.save
     assert uni.valid?
   end

   test 'should not save duplicate uni name' do
     uni1 = University.new
     uni1.name = "My Uni"
     uni1.address = "Some Address"
     uni1.save
     assert uni1.valid?

     uni2 = University.new
     uni2.name = "My Uni"
     uni2.address = "Some Address"
     uni2.save
     refute uni2.valid?
   end
end
