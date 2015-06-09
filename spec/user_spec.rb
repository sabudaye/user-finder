require 'spec_helper'

describe User do

  let!(:user) { build(:user) }

  it "should build users list" do
    expect(user.respond_to?(:age)).to be true
    expect(user.respond_to?(:height)).to be true
    expect(user.respond_to?(:amount)).to be true
    expect(user.respond_to?(:index)).to be true
    expect(user.respond_to?(:gender)).to be true
  end
end
