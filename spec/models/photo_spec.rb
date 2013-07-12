require 'spec_helper'

describe Photo do

  it "isn't empty" do
    photo = FactoryGirl.create(:photo)
    expect(photo.url).to_not be_nil
  end
end