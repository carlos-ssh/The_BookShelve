require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Has Factory done' do
    expect(create(:user)).to be_persisted
  end
end