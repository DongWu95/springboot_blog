package com.wpd.NewBlog.domin;

import javax.persistence.*;


/**
 * Created by Administrator on 2017/11/2 0002.
 */
@Entity
@Table(name = "techarticle")
public class techArticle {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;

    private Integer isShort;
    private String title;
    private String author;
    private String datetime;
    private String keywords;
    private String shortText;
    private String content;

    public techArticle() {

    }

    public techArticle(String title, String author, String datetime, String keywords) {

        this.title = title;
        this.author = author;
        this.datetime = datetime;
        this.keywords = keywords;

    }




    public int getId() {
        return id;
    }



    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public String getDatetime() {
        return datetime;
    }

    public String getKeywords() {
        return keywords;
    }

    public String getShortText() {
        return shortText;
    }

    public String getContent() {
        return content;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getIsShort() {
        return isShort;
    }


    public void setIsShort(Integer isShort) {
        this.isShort = isShort;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public void setShortText(String shortText) {
        this.shortText = shortText;
    }

    public void setContent(String content) {
        this.content = content;
    }





}
