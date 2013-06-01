class CreateSpreeContacts < ActiveRecord::Migration
  def change
    create_table :spree_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :mobile_phone
      t.string :message

      t.timestamps
    end
  end
end
