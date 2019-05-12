class CreateSliders < ActiveRecord::Migration[5.2]
  def change
    create_table :sliders do |t|
      t.string :title
      t.string :subTitle
      t.string :skillList
      t.string :sideImgDesktop
      t.string :avatarCenterMobile

      t.timestamps
    end
  end
end
