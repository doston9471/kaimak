class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
    	      
      t.string :date
      t.string :firstCourse
      t.string :secondCourse
      t.string :sideDish
      t.string :dessert
      t.string :bread

      t.string :firstCourseCalorie
      t.string :secondCourseCalorie
      t.string :sideDishCalorie
      t.string :dessertCalorie
      t.string :breadCalorie
      t.string :total
      t.timestamps
    end
  end
end
