require 'rails_helper'

RSpec.describe Position, type: :model do
  it 'validates presence of title' do
    expect(Position.new(title: '')).to_not be_valid
  end

  it 'validates maximum length of title' do
    expect(Position.new(title: "#{SecureRandom.base64(57)}")).to_not be_valid
  end
end
