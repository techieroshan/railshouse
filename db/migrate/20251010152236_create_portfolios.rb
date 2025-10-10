class CreatePortfolios < ActiveRecord::Migration[8.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :client
      t.string :industry
      t.text :description
      t.text :challenge
      t.text :solution
      t.text :results
      t.text :technologies
      t.datetime :published_at
      t.boolean :featured

      t.timestamps
    end
  end
end
