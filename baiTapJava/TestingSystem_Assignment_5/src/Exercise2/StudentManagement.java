package Exercise2;

import java.util.ArrayList;
import java.util.List;

public class StudentManagement {
    public static void main(String[] args) {
        List<Student> students = createStudents();
        diemDanhClass(students);
        hocBaiGroup(students, 1);
        diDonVeSinhGroup(students, 2);
    }
    private static List<Student> createStudents() {
        List<Student> students = new ArrayList<>();

        for (int i = 1; i <= 10; i++) {
            int group = (i % 3) + 1; // Chia thành 3 nhóm
            students.add(new Student(i, "Nguyễn Văn " + (char) ('A' + i - 1), group));
        }

        return students;
    }

    private static void diemDanhClass(List<Student> students) {
        System.out.println("Cả lớp điểm danh:");
        for (Student student : students) {
            student.diemDanh();
        }
    }

    private static void hocBaiGroup(List<Student> students, int group) {
        System.out.println("Nhóm " + group + " đi học bài:");
        for (Student student : students) {
            if (student.getGroup() == group) {
                student.hocBai();
            }
        }
    }

    private static void diDonVeSinhGroup(List<Student> students, int group) {
        System.out.println("Nhóm " + group + " đi dọn vệ sinh:");
        for (Student student : students) {
            if (student.getGroup() == group) {
                student.diDonVeSinh();
            }
        }
    }
}