public class TryCatchFinallyDemo {
    public static void main(String[] args) {
       try {
        int c = 1/0;
        System.out.println("c = " + c);
       }
       catch (ArithmeticException exception){
           System.out.println("khong the chia cho 0 ");
       }
    }
}
