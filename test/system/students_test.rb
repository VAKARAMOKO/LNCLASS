require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Classroom", with: @student.classroom_id
    fill_in "Contact parent 1", with: @student.contact_parent_1
    fill_in "Contact parent 2", with: @student.contact_parent_2
    fill_in "Contact student 1", with: @student.contact_student_1
    fill_in "Contact student 2", with: @student.contact_student_2
    fill_in "Matricule", with: @student.matricule
    fill_in "Matricule school", with: @student.matricule_school
    fill_in "Slug", with: @student.slug
    fill_in "Username", with: @student.username
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Classroom", with: @student.classroom_id
    fill_in "Contact parent 1", with: @student.contact_parent_1
    fill_in "Contact parent 2", with: @student.contact_parent_2
    fill_in "Contact student 1", with: @student.contact_student_1
    fill_in "Contact student 2", with: @student.contact_student_2
    fill_in "Matricule", with: @student.matricule
    fill_in "Matricule school", with: @student.matricule_school
    fill_in "Slug", with: @student.slug
    fill_in "Username", with: @student.username
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
