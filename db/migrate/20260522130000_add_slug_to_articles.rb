class AddSlugToArticles < ActiveRecord::Migration[8.1]
  class MigrationArticle < ApplicationRecord
    self.table_name = 'articles'
  end

  def up
    add_column :articles, :slug, :string

    MigrationArticle.reset_column_information

    MigrationArticle.find_each do |article|
      base_slug = article.title.to_s.parameterize.presence || "article-#{article.id}"
      candidate_slug = base_slug
      suffix = 2

      while MigrationArticle.where.not(id: article.id).exists?(slug: candidate_slug)
        candidate_slug = "#{base_slug}-#{suffix}"
        suffix += 1
      end

      article.update_columns(slug: candidate_slug)
    end

    change_column_null :articles, :slug, false
    add_index :articles, :slug, unique: true
  end

  def down
    remove_index :articles, :slug
    remove_column :articles, :slug
  end
end