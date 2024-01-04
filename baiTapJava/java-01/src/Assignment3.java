import java.time.LocalDateTime;
import java.util.Random;
import java.util.Scanner;

public class Assignment3 {
    public static void main ( String[] args){
     //Exercise 1
        //q1
        float a = 5240.5F;
        float b = 10970.055F;
        int a1 = (int) a;
        System.out.println("luong 1 :"+a1);
        int b1 = (int)b ;
        System.out.println("luong 2 :"+b1);
      //q2
        Random random = new Random();
        int SoNgauNhien = random.nextInt(100000);
        String SoDaChinh = String.format("%05d",SoNgauNhien);
        System.out.println(SoDaChinh);
      //q3
        String SoDuoi = SoDaChinh.substring(3);
        System.out.println(" 2 so duoi "+ SoDuoi);
      //q4
        Scanner scanner = new Scanner(System.in);
//        System.out.println("nhap m :");
//        int m = scanner.nextInt();
//        System.out.println("nhap n :");
//        int n = scanner.nextInt();
//        int thuong = m / n ;
//        System.out.println("thuong =" + thuong);
      //Exercise 2
         Account[] account = new Account[5];
        int i;
         for (  i = 0 ; i < account.length ;i++)
         {
             account[i] = new Account();
             account[i].email = "email" + i ;
             account[i].userName = "username"+i;
             account[i].fullName = "fullname"+i;
             String Date = null;
             account[i].createDate = LocalDateTime.parse(Date);
         }
         for (  i = 0 ; i < account.length ; i++ )
         {
             System.out.println("\nemail:"+ account[i].email+
                                 "\nusername:"+ account[i].userName+
                                  "\nfullname"+ account[i].fullName+
                                  "\nDate:"+ account[i].createDate
                     );
         }
        //Exercise 3
         //q1
         Integer luong = 5000;
         float luong1 = (Integer) luong;
         System.out.printf("luong1 : %.2f",luong1);
         //q2
        String so = "1234567";
        int so1 = Integer.parseInt((String) so);
        System.out.println("\nso = " + so1);
         //q3
        Integer so2 = Integer.valueOf("1234567");
        int so3 = so2.intValue();
        System.out.println("so3 = "+so3);

      //Exercise 4
        //Q1
        System.out.println("nhap s1 : ");
        String s1 = scanner.nextLine();
        String[] danhSachTu = s1.split("\\s+");
        int soTu = danhSachTu.length;
        System.out.println("so tu : "+soTu);
        //q2
//        System.out.println("nhap s2 : ");
//        String s2 = scanner.nextLine();
//        String ketqua;
//        ketqua = s1 + s2 ;
//        System.out.println(" s1 + s2 = "+ketqua);
    }
}
