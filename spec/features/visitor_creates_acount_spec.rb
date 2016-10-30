require "spec_helper.rb"


feature "Acount Creation" do
  scenario "allows guest to create acount" do
    visit new_user_registration_path
    fill_in :user_email, with: 'koren.hmel@gmail.com'
    fill_in :user_username, with: 'koren'
    fill_in :user_password, with: 'secure123'
    fill_in :user_password_confirmation, with: 'secure123'
    click_button 'Sign up'
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

end
