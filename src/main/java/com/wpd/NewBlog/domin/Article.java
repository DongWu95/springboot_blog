package com.wpd.NewBlog.domin;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by Administrator on 2017/10/26 0026.
 */
@Entity
@Table(name = "article")
public class Article {


    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;

    @Column(name = "isShort")
    private Integer isShort;
    private String title;
    private String author;
    private String datetime;
    private String keywords;
    private String shortText;
    private String content;



    @OneToMany(mappedBy = "comid",cascade = {CascadeType.ALL},fetch=FetchType.EAGER)
    private List<Comment> e =new ArrayList<>();





    public Article() {

    }

    public Article(String title, String author, String datetime, String keywords) {

        this.title = title;
        this.author = author;
        this.datetime = datetime;
        this.keywords = keywords;

    }


    public List<Comment> getE() {
        return e;
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


    public void setE(List<Comment> e) {
        this.e = e;
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
