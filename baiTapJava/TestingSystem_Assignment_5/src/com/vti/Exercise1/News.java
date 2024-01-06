package com.vti.Exercise1;
public class News implements INews {
    private int ID;
    private String Title;
    private String PublishDate;
    private String Author;
    private String Content;
    private int[] Rates = new int[3];
    private float averageRate;

    public News(int ID, String Title, String PublishDate, String Author, String Content) {
        this.ID = ID;
        this.Title = Title;
        this.PublishDate = PublishDate;
        this.Author = Author;
        this.Content = Content;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        this.Title = title;
    }

    public String getPublishDate() {
        return PublishDate;
    }

    public void setPublishDate(String publishDate) {
        this.PublishDate = publishDate;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String author) {
        this.Author = author;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        this.Content = content;
    }

    public float getAverageRate() {
        return averageRate;
    }

    public void setRates(int[] rates) {
        this.Rates = rates;
    }

    public int[] getRates() {
        return this.Rates;
    }

    public void display() {
        System.out.println("Title: " + this.Title);
        System.out.println("Publish Date: " + this.PublishDate);
        System.out.println("Author: " + this.Author);
        System.out.println("Content: " + this.Content);
        System.out.println("Average Rate: " + this.averageRate);
    }

    public void calculate() {
        float sum = 0;
        for (int rate : this.Rates) {
            sum += rate;
        }
        this.averageRate = sum / this.Rates.length;
    }
}
