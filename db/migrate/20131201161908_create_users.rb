class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :battletag
      t.string :skype
      t.string :deck
      t.string :email

      t.timestamps
    end
  end
end
