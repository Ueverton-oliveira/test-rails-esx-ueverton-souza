class CreateHistorics < ActiveRecord::Migration[6.0]
  def change
    create_table :historics do |t|
      t.references :certificate, foreign_key: true

      t.timestamps
    end
  end
end
