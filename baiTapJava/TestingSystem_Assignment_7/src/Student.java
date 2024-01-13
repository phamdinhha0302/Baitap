public class Student {
    static int TongStudents = 0;
    public Student() {
        if (TongStudents < 7) {
            TongStudents++;
        } else {
            System.out.println("Không thể thêm sinh viên mới , đã tối đa");
        }
    }
}