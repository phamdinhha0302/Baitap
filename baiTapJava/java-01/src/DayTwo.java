public class DayTwo {
    public static void main(String[] args) {
        AccountDao accountDao = new AccountDao();
        Account account = accountDao.getAccount(12);
        if ( account == null ){
            System.out.println("nguoi dung ko co");
        }
    }
}

