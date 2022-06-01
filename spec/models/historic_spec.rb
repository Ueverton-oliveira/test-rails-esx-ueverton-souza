require 'rails_helper'

RSpec.describe Historic, type: :model do
  it { is_expected.to belong_to :certificate }
end
