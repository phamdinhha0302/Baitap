public class SecondaryStudent extends Student {
    static int TongSecondaryStudents = 0;

    public SecondaryStudent() {
        super();
        if (TongSecondaryStudents <= 4) {
            TongSecondaryStudents++;
        } else {
            System.out.println("Không thể thêm SecondaryStudent mới đã tối đa");
        }
    }
}