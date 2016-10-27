require "spec_helper.rb"


feature "Contact Creation" do
  scenario "alows access to contact page" do
    visit '/contacts'
    expect(page).to have_content 'Contact us'

  end
end
