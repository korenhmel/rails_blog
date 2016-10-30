require "spec_helper.rb"


feature "Acount Creation" do
  scenario "allows guest to create acount" do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

end

