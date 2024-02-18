class CreateOrganizadors < ActiveRecord::Migration[7.1]
  def change
    create_table :organizadors do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.references :cidade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
