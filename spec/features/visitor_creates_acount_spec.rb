require "spec_helper.rb"


 feature "Acount Creation" do

   scenario "allows guest to create acount" do
      sign_up
     expect(page).to have_content "We are glad to meet you here on our website!!!!!"


   end
   end

