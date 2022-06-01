require 'rails_helper'

RSpec.describe "Historics", type: :feature do
  it 'Visit index page' do
    visit(historics_path)
    expect(page).to have_current_path(historics_path)
  end
end
