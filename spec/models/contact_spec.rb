require 'rails_helper'

describe Contact do
  # タイトルと内容があれば有効な状態であること
  it "is valid with name" do
    contact = Contact.new(name: '宮岡', email: 'ffff@gmail.com', content: 'こんにちは')
    expect(contact).to be_valid
  end

  #タイトルがなければ無効であること
  it "is invalid without a name" do
    contact = Contact.new
    expect(contact).not_to be_valid
  end

  #タイトルがなければ無効であること
  it "is valid with name" do
    contact = Contact.new
    contact.valid?
    expect(contact.errors[:name]).to include("を入力してください")
    expect(contact.errors[:email]).to include("を入力してください")
    expect(contact.errors[:content]).to include("を入力してください")
  end
end