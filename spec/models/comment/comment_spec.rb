require "spec_helper.rb"

describe Comment do
  it {should belong_to :user}
  it {should belong_to :article}
  it {should validate_presence_of :body}
  it {should validate_presence_of :autor}
  it { should validate_length_of(:body).is_at_most(4000) }
  it { should validate_length_of(:autor).is_at_most(145) }
end