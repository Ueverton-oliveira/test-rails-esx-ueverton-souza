require 'rails_helper'

RSpec.describe "Certificates", type: :feature do
  it 'Visit index page' do
    visit(root_path)
    print page.html
    expect(page).to have_current_path(root_path)
  end
  
end
