class CreateQuotations < ActiveRecord::Migration
  def change
    create_table :quotations do |t|
      t.text :content
      t.text :source_url
      t.text :author
      t.references :user, index: true

      t.timestamps
    end
  end
end
