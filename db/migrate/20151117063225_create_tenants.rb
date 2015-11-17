class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :domain
      t.string :image_url

      t.timestamps null: false
    end
  end
end
