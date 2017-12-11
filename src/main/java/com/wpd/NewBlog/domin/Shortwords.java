package com.wpd.NewBlog.domin;

import javax.persistence.*;


/**
 * Created by Administrator on 2017/10/29 0029.
 */

@Entity
@Table(name = "shortword")
public class Shortwords {


    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;

    private String content;
    private String author;


    private String datetime;


    public Integer getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

    public String getAuthor() {
        return author;
    }

    public String getDatetime() {
        return datetime;
    }


    public void setId(Integer id) {
        this.id = id;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }


}
