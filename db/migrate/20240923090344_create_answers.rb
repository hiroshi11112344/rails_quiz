class CreateAnswers < ActiveRecord::Migration[7.2]
  def change
    create_table :answers do |t|
      t.integer :quiz_id
      t.string :correct_answer
      t.boolean :correct
      

      t.timestamps
    end
  end
end
