require "spec_helper.rb"


feature "Contact Creation" do
  scenario "alows access to contact page" do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')

  end
end
