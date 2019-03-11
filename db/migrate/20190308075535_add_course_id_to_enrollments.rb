class AddCourseIdToEnrollments < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :course_id, :integer
  end
end
