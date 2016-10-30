require "spec_helper.rb"


feature "Contact Creation" do
  scenario "alows access to contact page" do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')

  end
  scenario "alows guest to create contact" do
    visit '/contacts'
    fill_in :contact_email, with: 'user@example.com'
    fill_in :contact_message, with: 'something'
    click_button 'Send message'
    expect(page).to have_content 'Thanks'
  end
end
