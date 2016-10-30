def sign_up
  visit new_user_registration_path
  fill_in :user_email, with: 'koren.hmel@gmail.com'
  fill_in :user_username, with: 'koren'
  fill_in :user_password, with: 'secure123'
  fill_in :user_password_confirmation, with: 'secure123'
  click_button 'Sign up'
end