require "spec_helper.rb"
#
#
feature "Comments Creation" do
  scenario "add_comments_for_article" do
    sign_up
    visit new_article_path
    fill_in :article_title, :with => 'title of article'
    fill_in :article_text, :with => 'something gone wrong'
    click_button 'Save Article'
    expect(page).to have_content 'something gone wrong'
    fill_in :comment_body, :with => 'hello koren'

    click_button 'Create Comment'
    expect(page).to have_content 'hello koren'
  end
end