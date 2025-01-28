require 'rails_helper'

RSpec.describe 'Books', type: :request do
  describe 'POST /books' do
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

    it 'checks valid and invalid title' do
      post books_path, params: { book: valid_attributes }
      follow_redirect!
      expect(response.body).to include('Book was successfully created.')
      expect(Book.last.title).to eq('The Great American Cookbook')

      post books_path, params: { book: invalid_attributes }
      expect(response).to render_template(:new)
      expect(response.body).to include('Title can&#39;t be blank')
    end

    it 'checks valid and invalid author' do
      post books_path, params: { book: valid_attributes }
      follow_redirect!
      expect(response.body).to include('Book was successfully created.')
      expect(Book.last.author).to eq('John Doe')

      post books_path, params: { book: invalid_attributes }
      expect(response).to render_template(:new)
      expect(response.body).to include('Author can&#39;t be blank')
    end

    it 'checks valid and invalid price' do
      post books_path, params: { book: valid_attributes }
      follow_redirect!
      expect(response.body).to include('Book was successfully created.')
      expect(Book.last.price).to eq(19.99)

      post books_path, params: { book: invalid_attributes }
      expect(response).to render_template(:new)
      expect(response.body).to include('Price can&#39;t be blank')
    end

    it 'checks valid and invalid published date' do
      post books_path, params: { book: valid_attributes }
      follow_redirect!
      expect(response.body).to include('Book was successfully created.')
      expect(Book.last.published_date).to eq(Date.parse('2023-01-01'))

      post books_path, params: { book: invalid_attributes }
      expect(response).to render_template(:new)
      expect(response.body).to include('Published date can&#39;t be blank')
    end
  end
end