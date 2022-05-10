require 'rails_helper'

RSpec.describe Dummy, type: :model do
  it " must have a current date" do
    dummy = FactoryBot.create(:dummy)
    expect(dummy.date).to be => "2022-05-10"
  end
end
