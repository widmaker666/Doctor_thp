class Linkspecdoctor < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :Specialty, foreign_key: true
  end
end
