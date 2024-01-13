package util;

import java.util.Scanner;

public class ScannerUtil {
    private Scanner scanner = new Scanner(System.in);

    public int inputAge() {
        try {
            String input = scanner.nextLine();
            int age = Integer.parseInt(input);
            if (age < 0) {
                System.out.println("tuoi lon hon 0");
            } else {
                return age;
            }
        } catch (NumberFormatException exception) {
            System.out.println("Please input an age as int, input again");
        }
        return 0;
    }
}
