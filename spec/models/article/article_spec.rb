require "spec_helper.rb"

describe Article do
  describe "validations" do


  it {should validate_presence_of :title}
  it {should validate_presence_of :text}
  it { should validate_length_of(:title).is_at_most(140) }
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

  describe "#last_comment" do
    it "returns the last comment" do
    # создаем статью, но в этот раз с комментариями
      article = create(:article_with_comments)
      # проверка
      expect(article.last_comment.body).to eq "somthing blabla 3"
    end
  end
end