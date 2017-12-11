package com.wpd.NewBlog.controller;

import com.mchange.io.FileUtils;
import com.wpd.NewBlog.dao.*;
import com.wpd.NewBlog.domin.Article;
import com.wpd.NewBlog.domin.Comment;
import com.wpd.NewBlog.domin.Resourse;
import com.wpd.NewBlog.domin.Shortwords;
import com.wpd.NewBlog.domin.techArticle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/10/23 0023.
 */
@Controller
public class MyController {


    @Autowired
    private ArticleImpl artitleImpl;
    @Autowired
    private ArticleDao articleDao;
    @Autowired
    private ShortwordsDao shortwordsDao;
    @Autowired
    private ShortwordsImpl shortImpl;
    @Autowired
    private techArticleImpl techArticle;
    @Autowired
    private techArticleDao  techArticleDao;
    @Autowired
    private ResourseDao   resourseDao;
    @Autowired
    private ResourseImpl  resourseImpl;
    @Autowired
    private CommentDao    commentDao;



    @RequestMapping(value = "/Myblog/MyComment")
    public String MyComment(HttpServletRequest request, HttpSession session,@RequestParam("articleid") Integer articleid){


        Article article = articleDao.findOne(articleid);
        request.setAttribute("article",article);
        List<Comment> commentlist = article.getE();
        commentlist.sort(new Comparator<Comment>(){      //按某个属性再排序
            @Override
            public int compare(Comment o1, Comment o2) {
                if(o1.getId()> o2.getId())
                    return 1;
                if(o1.getId() == o2.getId())
                    return 0;
                return -1;
            }
        });


        request.setAttribute("commentlist",commentlist);
        int comment_num = commentlist.size();
        request.setAttribute("comment_num",comment_num);
        request.setAttribute("articleid",articleid);

        return "fullarticle";






    }











    //评论的上传
    @RequestMapping(value = "/Myblog/Comment")
//    @Transactional(propagation = Propagation.NOT_SUPPORTED)
    public String comment(HttpServletRequest request, HttpSession session, @RequestParam(value = "message",defaultValue ="-010" ) String message, @RequestParam("articleid") Integer articleid){

        System.out.println("message:---------------------------------"+message);

        if(!message.equals("-010")) {
            String datetime;
            Article article = articleDao.findOne(articleid);
            String name = (String) session.getAttribute("username");
            Date d = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            datetime = sdf.format(d);
            Comment comment = new Comment(name, datetime, message, article);
            commentDao.save(comment);
        }


//        Article article = articleDao.findOne(articleid);
//        request.setAttribute("article",article);
//        List<Comment> commentlist = article.getE();
//        commentlist.sort(new Comparator<Comment>(){      //按某个属性再排序
//            @Override
//            public int compare(Comment o1, Comment o2) {
//                if(o1.getId()> o2.getId())
//                    return 1;
//                if(o1.getId() == o2.getId())
//                    return 0;
//                return -1;
//            }
//        });
//
//
//        request.setAttribute("commentlist",commentlist);
//        int comment_num = commentlist.size();
//        request.setAttribute("comment_num",comment_num);
//        request.setAttribute("articleid",articleid);

//        return "fullarticle";

            return "redirect:/Myblog/MyComment?articleid="+articleid;

    }








    @RequestMapping(value = "/Memory")
    public String Memory(){


        return "editor";

    }




    @RequestMapping(value = "/Mytech")
    public String Mytech(){


        return "editor2";

    }


    @RequestMapping(value = "/Myupload")
    public String Myupload(){


        return "upload";

    }



    @RequestMapping(value = "/Login")
    public  String  login(){


        return "login";



    }



    //登陆
    @RequestMapping(value = "/Myblog/Login")
    public String  mylogin(HttpServletRequest request, HttpSession session)throws Exception{

        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        System.out.println(username);
//        System.out.println("东子");
        if(username.equals("东子") || username.equals("徐鉴") || username.equals("王亮") || username.equals("王成城")  ){

            session.setAttribute("username",username);
            return "redirect:/Myblog/page";

        }
        else
        return "redirect:/Login";


    }




    //下载资源
    @RequestMapping(value = "/download",method= RequestMethod.GET)
    public ResponseEntity<byte[]> download(HttpServletRequest request, @RequestParam("filename") String filename,
                                           Model model) throws IOException {

        String downloadFilePath="/home/resourse/upload";//从我们的上传文件夹中去取

        File file = new File(downloadFilePath+File.separator+filename);//新建一个文件

        HttpHeaders headers = new HttpHeaders();//http头信息

        String downloadFileName = new String(filename.getBytes("UTF-8"),"iso-8859-1");//设置编码

        headers.setContentDispositionFormData("attachment", downloadFileName); //呵呵

        System.out.println(123);

        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);

        //MediaType:互联网媒介类型  contentType：具体请求中的媒体类型信息

        return new ResponseEntity<byte[]>(FileUtils.getBytes(file),headers, HttpStatus.CREATED);

    }



    //显示资源文件的后台
    @RequestMapping(value = "/showResourse")
    public String showResourse(HttpServletRequest request, HttpServletResponse response, @RequestParam(value="pagenum",
            defaultValue="1")Integer pagenum, @RequestParam(value = "size", defaultValue = "5") Integer size){

        Page<Resourse> pages = null;
        List<Resourse> articleList = null;
        int totalpage;

        System.out.println(size);


        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(pagenum-1, size, sort);
        pages=resourseImpl.findAll(pageable);
        articleList = pages.getContent();
        totalpage = pages.getTotalPages();

        System.out.println(pagenum);
        System.out.println(totalpage);
        System.out.println(articleList.size());



//        request.setAttribute("name", "hello freemaker");
        request.setAttribute("pageNo", pagenum);
        request.setAttribute("totalPage", totalpage);
        request.setAttribute("resourselist",articleList);

//        return pages;

        return "riji";



    }




    //提交资源文件
    @RequestMapping(value = "/uploadsource")
    private String upload(@RequestParam("file") MultipartFile file,
                          HttpServletRequest request, HttpSession session){


        if (!file.isEmpty()) {

            String contextPath = request.getContextPath();//"/SpringMvcFileUpload"
            String servletPath = request.getServletPath();//"/gotoAction"
            String scheme = request.getScheme();//"http"
            String datetime = null;

            String storePath= "/home/resourse/upload";    //存放我们上传的文件路径  这里在C盘下建了/upload/wpd目录

            String fileName = file.getOriginalFilename();

            System.out.println(fileName);

            File filepath = new File(storePath, fileName);

            if (!filepath.getParentFile().exists()) {

                filepath.getParentFile().mkdirs();//如果目录不存在，创建目录

            }

            try {
                file.transferTo(new File(storePath+File.separator+fileName));//把文件写入目标文件地址

            } catch (Exception e) {

                e.printStackTrace();

                return "error";

            }
            Date d = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            datetime = sdf.format(d);
            Resourse resourse = new Resourse();
            resourse.setDatetime(datetime);
            resourse.setAuthor((String)session.getAttribute("username"));
            resourse.setTitle(fileName);
            resourse.setPath(storePath+File.separator+fileName);
            resourseDao.save(resourse);

            return "success";//返回到成功页面

        }else {

            return "error";//返回到失败的页面
        }






    }



    @RequestMapping(value = "/Myblog/uptech")
    private String uptech(HttpServletRequest request, HttpServletResponse response, HttpSession session)throws Exception{

        //        int isShort;
        String datetime;
        request.setCharacterEncoding("utf-8");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String author = (String) session.getAttribute("username");
        String keywords = "技术";
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        datetime = sdf.format(d);
        techArticle article = new techArticle(title, author,  datetime,  keywords);

        if(content.length() <= 250){


            article.setIsShort(1);
            article.setShortText(content);
        }
        else{

            article.setIsShort(0);
            String  shorttext = content.substring(0,250);
            article.setShortText(shorttext+"...");
            article.setContent(content);


        }


        techArticleDao.save(article);

//        System.out.println(title);
//        System.out.println(content);
//        request.setAttribute("content",content);

        return "redirect:/Myblog/tech";




    }




    @RequestMapping(value = "/Myblog/Log")
    public String Log (HttpServletRequest request, HttpSession session, HttpServletResponse response)throws Exception{

//        int isShort;
        String datetime;
        request.setCharacterEncoding("utf-8");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String author = (String) session.getAttribute("username");
        String keywords = "时光";
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        datetime = sdf.format(d);
        Article article = new Article(title, author,  datetime,  keywords);

        if(content.length() <= 250){


            article.setIsShort(1);
            article.setShortText(content);
            article.setContent(content);
        }
        else{

            article.setIsShort(0);
            String  shorttext = content.substring(0,250);
            article.setShortText(shorttext+"...");
            article.setContent(content);


        }


        articleDao.save(article);

//        System.out.println(title);
//        System.out.println(content);
//        request.setAttribute("content",content);

        return "redirect:/Myblog/page";


    }

    //只言片语的提交
    @RequestMapping(value = "/Myblog/upshort")
    public String upshort(HttpServletRequest request, HttpServletResponse response, HttpSession session)throws Exception{

        String datetime = null;
        Shortwords word = new Shortwords();
        request.setCharacterEncoding("utf-8");
        String content = request.getParameter("comment");
        System.out.println("content: "+content+".........................................");
        word.setAuthor((String)session.getAttribute("username"));
        word.setContent(content);
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        datetime = sdf.format(d);
        word.setDatetime(datetime);
        shortwordsDao.save(word);



        return "redirect:/Myblog/Shortwords";


    }

    @RequestMapping(value = "/Myblog/Shortwords")
    public String shortword(HttpServletRequest request, HttpServletResponse response, @RequestParam(value="pagenum",
            defaultValue="1")Integer pagenum, @RequestParam(value = "size", defaultValue = "5") Integer size){

        System.out.println("size:"+size+" pagenum:"+pagenum);
        Page<Shortwords> pages = null;
        List<Shortwords> wordList = null;
        int totalpage;
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(pagenum-1, size, sort);
        pages=shortImpl.findAll(pageable);
        wordList = pages.getContent();
        totalpage = pages.getTotalPages();


        request.setAttribute("pageNo", pagenum);
        request.setAttribute("totalPage", totalpage);
        request.setAttribute("wordList",wordList);

        return "shuo";

    }




    @RequestMapping(value = "/Myblog/tech")
//    @ResponseBody
    public String tech(HttpServletRequest request, HttpServletResponse response, @RequestParam(value="pagenum",
            defaultValue="1")Integer pagenum, @RequestParam(value = "size", defaultValue = "5") Integer size){

        Page<techArticle> pages = null;
        List<techArticle> articleList = null;
        int totalpage;

        System.out.println(size);


        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(pagenum-1, size, sort);
        pages=techArticle.findAll(pageable);
        articleList = pages.getContent();
        totalpage = pages.getTotalPages();

        System.out.println(pagenum);
        System.out.println(totalpage);
        System.out.println(articleList.size());



        request.setAttribute("name", "hello freemaker");
        request.setAttribute("pageNo", pagenum);
        request.setAttribute("totalPage", totalpage);
        request.setAttribute("articlelist",articleList);

//        return pages;

        return "tech";


    }





    @RequestMapping(value = "/Myblog/page")
//    @ResponseBody
    public String makerLogin(HttpServletRequest request, HttpServletResponse response,@RequestParam(value="pagenum",
            defaultValue="1")Integer pagenum,@RequestParam(value = "size", defaultValue = "5") Integer size){

        Page<Article> pages = null;
        List<Article> articleList = null;

        int totalpage;

        System.out.println(size);


        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(pagenum-1, size, sort);
        pages=artitleImpl.findAll(pageable);
        articleList = pages.getContent();
        totalpage = pages.getTotalPages();

        System.out.println(pagenum);
        System.out.println(totalpage);
        System.out.println(articleList.size());




//      request.setAttribute("name", "hello freemaker");
        request.setAttribute("pageNo", pagenum);
        request.setAttribute("totalPage", totalpage);
        request.setAttribute("articlelist",articleList);
//        request.setAttribute("commentlist",commentsize);

//        return pages;

        return "index";


    }






    @RequestMapping(value = "/test")
    public String test(){


        return "editor";

    }

    @RequestMapping(value = "/View/{path}")
    public String View(@PathVariable String path){


        return path;


    }

    @RequestMapping(value = "/fullContent")
    public String fullContent(HttpServletRequest request, HttpServletResponse response, @RequestParam(value = "id") Integer id){

        Article article = null;
        article = articleDao.findOne(id);
        if(article != null){

            request.setAttribute("article",article);
            List<Comment> commentlist = article.getE();
            request.setAttribute("commentlist",commentlist);
            int comment_num = commentlist.size();
            request.setAttribute("comment_num",comment_num);
            request.setAttribute("articleid",id);



            return "fullarticle";

        }


        return "error";


    }






    @RequestMapping(value = "/hello")
    public String hello(){



        return "index";


    }


}
