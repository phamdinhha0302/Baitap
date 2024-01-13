public class PrimaryStudent extends Student {
    static int TongPrimaryStudents = 0;

    public PrimaryStudent() {
        super();
        if (TongPrimaryStudents <= 2) {
            TongPrimaryStudents++;
        } else {
            System.out.println("Không thể thêm PrimaryStudent mới đã đạt tối đa ");
        }
    }
}