class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.string :imgUrl
      t.string :name
      t.string :designation
      t.string :recommendation

      t.timestamps
    end
  end
end
