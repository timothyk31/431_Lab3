require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:valid_attributes) do
    { 
      title: 'The Great American Cookbook',
      author: 'John Doe',
      price: 19.99,
      published_date: '2023-01-01'
    }
  end

  let(:invalid_attributes) do
    { 
      title: '',
      author: '',
      price: nil,
      published_date: nil
    }
  end

  describe 'validations' do
    it 'validates title presence' do
      valid_book = Book.new(valid_attributes)
      invalid_book = Book.new(invalid_attributes)

      expect(valid_book).to be_valid
      expect(invalid_book).not_to be_valid
      expect(invalid_book.errors[:title]).to include("can't be blank")
    end

    it 'validates author presence' do
      valid_book = Book.new(valid_attributes)
      invalid_book = Book.new(invalid_attributes)

      expect(valid_book).to be_valid
      expect(invalid_book).not_to be_valid
      expect(invalid_book.errors[:author]).to include("can't be blank")
    end

    it 'validates price presence' do
      valid_book = Book.new(valid_attributes)
      invalid_book = Book.new(invalid_attributes)

      expect(valid_book).to be_valid
      expect(invalid_book).not_to be_valid
      expect(invalid_book.errors[:price]).to include("can't be blank")
    end

    it 'validates published_date presence' do
      valid_book = Book.new(valid_attributes)
      invalid_book = Book.new(invalid_attributes)

      expect(valid_book).to be_valid
      expect(invalid_book).not_to be_valid
      expect(invalid_book.errors[:published_date]).to include("can't be blank")
    end
  end
end