class CitextTest < ActiveRecord::Migration
  def change
    execute "CREATE EXTENSION citext"

    create_table :users do |t|
      t.citext  :username,       null: false
    end
  end
end
