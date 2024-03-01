# frozen_string_literal: true

class MainController < ApplicationController
  def initialize
    super()
    @articles = Article.all
    @numbers_array = []
    i = 0
    while i < 10
      @numbers_array.push(rand(1..100))
      i += 1
    end
  end

  def create
    new_article = Article.new(title: 'Ruby', body: 'I am Ruby - Community !')
    new_article.save
    puts "#{new_article.title} - #{new_article.body}"
  end

  def index
    @articles
  end

  def index_by_id
    id = params[:id]
    puts "params: #{id}"
    @article = Article.find(id)
  end
end
