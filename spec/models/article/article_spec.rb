require "spec_helper.rb"

describe Article do
  describe "validations" do


  it {should validate_presence_of :title}
  it {should validate_presence_of :text}

  end

  describe "associations" do
    it {should have_many :comments}
    it {should belong_to :user}
  end

  describe "#subject" do
    it "returns the article title" do
      # 'создаем обьект article хитрым способом'
      article = create(:article, title: 'Lorem Ipsum')
      # 'assert, проверка'
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end
end