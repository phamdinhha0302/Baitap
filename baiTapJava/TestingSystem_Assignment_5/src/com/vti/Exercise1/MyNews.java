package com.vti.Exercise1;
import java.util.Scanner;

public class MyNews {
    private static Scanner scanner = new Scanner(System.in);
    private News[] newsList = new News[100];
    private int newsCount = 0;

    public static void main(String[] args) {
        MyNews myNewsProgram = new MyNews();
        myNewsProgram.menu();
    }

    public void insertNews() {
        int ID = newsCount + 1;
        System.out.print("Nhap Title: ");
        String title = scanner.nextLine();
        System.out.print("Nhap Publish Date: ");
        String publishDate = scanner.nextLine();
        System.out.print("Nhap Author: ");
        String author = scanner.nextLine();
        System.out.print("Nhap Content: ");
        String content = scanner.nextLine();
        int[] rates = new int[3];
        for (int i = 0; i < 3; i++) {
            System.out.print("Nhap rate " + (i + 1) + ": ");
            rates[i] = scanner.nextInt();
        }

        News news = new News(ID, title, publishDate, author, content);
        news.setRates(rates);
        news.calculate();

        newsList[newsCount] = news;
        newsCount++;
        System.out.println("insert OK");
    }

    public void viewListNews() {
        for (int i = 0; i < newsCount; i++) {
            newsList[i].display();
        }
    }

    public void averageRate() {
        for (int i = 0; i < newsCount; i++) {
            newsList[i].calculate();
            newsList[i].display();
        }
    }

    public void menu() {
        while (true) {
            System.out.println("\nMenu:");
            System.out.println("1. Insert news");
            System.out.println("2. View list news");
            System.out.println("3. Average rate");
            System.out.println("4. Exit");

            System.out.print("Nhap Lua chon cua ban ");
            int choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    insertNews();
                    break;
                case 2:
                    viewListNews();
                    break;
                case 3:
                    averageRate();
                    break;
                case 4:
                    System.out.println("Thoat");
                    return;
                default:
                    System.out.println("Nhap sai moi ban nhap lai");
            }
        }
    }
}

