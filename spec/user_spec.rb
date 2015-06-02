require 'spec_helper'

describe User do

  let!(:users) { build_list(:user, 10) }

  it "should build users list" do
    expect(users).not_to be nil
  end
end
