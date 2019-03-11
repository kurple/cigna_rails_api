class AddStudentIdToEnrollments < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :student_id, :integer
  end
end
