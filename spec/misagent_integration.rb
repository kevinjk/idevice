require_relative 'spec_helper'

describe Idev::MisAgentClient do
  before :all do
    @mis = Idev::MisAgentClient.attach
  end

  it "should list installed profiles" do
    profiles = @mis.profiles
    profiles.should be_a Array
    profiles.each do |profile|
      profile.should be_a StringIO
    end
  end

  it "should install a profile"

  it "should remove an installed profile"
end