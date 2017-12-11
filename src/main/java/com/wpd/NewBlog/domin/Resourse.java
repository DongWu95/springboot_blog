package com.wpd.NewBlog.domin;

import javax.persistence.*;


/**
 * Created by Administrator on 2017/11/3 0003.
 */
@Entity
@Table(name = "resourse")
public class Resourse {


    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;


    private String path;


    private String author;

    private String datetime;

    private String title;


    public int getId() {
        return id;
    }

    public String getPath() {
        return path;
    }

    public String getAuthor() {
        return author;
    }


    public String getDatetime() {
        return datetime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public void setAuthor(String author) {
        this.author = author;
    }


}
