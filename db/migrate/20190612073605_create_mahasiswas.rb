class CreateMahasiswas < ActiveRecord::Migration[5.2]
  def change
    create_table :mahasiswas do |t|
      t.string :nama
      t.string :jurusan

      t.timestamps
    end
  end
end
