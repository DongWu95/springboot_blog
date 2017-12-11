package com.wpd.NewBlog.filter;

import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2017/11/15 0015.
 */



public class FilterOne extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        boolean dofilter = true;

        String[] notFilter = new String[] {  "Login","assets" };

        String url = request.getRequestURI();

        for(String s : notFilter){


            if(url.indexOf(s)!=-1) {
                dofilter = false;
                break;                           //不过滤
            }
        }

        if(dofilter){


            Object obj = request.getSession().getAttribute("username");
            if(obj == null){


                response.setCharacterEncoding("UTF-8");
                response.setContentType("application/json; charset=utf-8");
                response.getWriter().write("{\"state\":0,\"info\":\"无权限，请登录\"}");




/*
                request.setCharacterEncoding("UTF-8");
                response.setCharacterEncoding("UTF-8");
                PrintWriter out = response.getWriter();
                String loginPage = "....";
                StringBuilder builder = new StringBuilder();
                builder.append("<script type=\"text/javascript\">");
                builder.append("alert('无权限，请登录！');");
                builder.append("window.top.location.href='");
                builder.append(loginPage);
                builder.append("';");
                builder.append("</script>");
                out.print(builder.toString());
*/



            }

            else
                filterChain.doFilter(request,response);



        }

        else
            filterChain.doFilter(request,response);


    }
}
