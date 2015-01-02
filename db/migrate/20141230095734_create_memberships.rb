class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :company, index: true

      t.timestamps null: false
    end
    add_foreign_key :memberships, :users
    add_foreign_key :memberships, :companies
  end
end
