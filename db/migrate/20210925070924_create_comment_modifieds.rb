class CreateCommentModifieds < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_modifieds do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
