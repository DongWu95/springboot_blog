package com.wpd.NewBlog.domin;

import javax.persistence.*;

/**
 * Created by Administrator on 2017/11/9 0009.
 */
@Entity
@Table(name = "comment")
public class Comment {


    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;

    private String name;
    private String datetime;
    private String content;



    @ManyToOne
    @JoinColumn(name = "comid")
    private Article comid;


    public Comment(String name, String datetime, String content, Article comid) {
        this.name = name;
        this.datetime = datetime;
        this.content = content;
        this.comid = comid;
    }

    public Comment(){}

    public Article getComid() {
        return comid;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDatetime() {
        return datetime;
    }

    public String getContent() {
        return content;
    }


    public void setComid(Article comid) {
        this.comid = comid;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public void setContent(String content) {
        this.content = content;
    }



}
