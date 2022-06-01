class CreateCertificates < ActiveRecord::Migration[6.0]
  def change
    create_table :certificates do |t|
      t.string :url
      t.string :status

      t.timestamps
    end
  end
end
