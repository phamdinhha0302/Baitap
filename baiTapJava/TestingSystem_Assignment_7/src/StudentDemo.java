public class StudentDemo {
    public static void main(String[] args) {
        Student student1 = new PrimaryStudent();
        Student student2 = new PrimaryStudent();
        Student student3 = new SecondaryStudent();
        Student student4 = new SecondaryStudent();
        Student student5 = new SecondaryStudent();
        Student student6 = new SecondaryStudent();
        Student student7 = new SecondaryStudent();
        Student student8 = new SecondaryStudent();
        System.out.println("Tổng số sinh viên: " + Student.TongStudents);
        System.out.println("Số lượng PrimaryStudent: " + PrimaryStudent.TongPrimaryStudents);
        System.out.println("Số lượng SecondaryStudent: " + SecondaryStudent.TongSecondaryStudents);
    }
}