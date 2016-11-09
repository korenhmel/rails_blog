require "spec_helper.rb"


feature "Article Creation" do
  before(:all) do
    sign_up

  end

  # scenario "allows user to visit new article page" do
  #   visit new_article_path
  #
  #    expect(page).to have_content 'New article'
  #
  # end

    scenario "user create article" do
      visit new_article_path
      fill_in :article_title, :with=> 'title of article'
      fill_in :article_text, :with=> 'something gone wrong'
      click_button 'Save Article'
       expect(page).to have_content 'something gone wrong'

    end

end
