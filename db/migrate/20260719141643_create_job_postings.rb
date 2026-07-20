class CreateJobPostings < ActiveRecord::Migration[7.2]
  def change
    create_table :job_postings do |t|
      t.string :company_name
      t.string :title
      t.text :requirements
      t.text :description
      t.string :salary
      t.string :location
      t.text :ai_generated_text
      t.text :edited_text

      t.timestamps
    end
  end
end
