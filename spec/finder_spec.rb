require 'spec_helper'
require 'gdbm'

describe Finder do

  let(:limit) { 100000 }
  let!(:finder) { Finder.new(build_list(:user, limit)) }

  it "should search by options" do
    result = finder.search({ age: 35, height: (260..267), amount: (500000..1000000), gender: 1 })
    user = result.sample
    unless user.nil?
      expect(user.gender).to eq 1
      expect(user.age >= 12).to be true
      expect(user.age <= 37).to be true
      expect(user.height).to eq(267)
      expect(user.amount >= 500000).to be true
    end
  end
end
