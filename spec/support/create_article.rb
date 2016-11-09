def create_article
  visit new_article_path
  fill_in :article_title, :with=> 'new_title of article'
  fill_in :article_text, :with=> 'smth wrong'
  click_button 'Save Article'
end