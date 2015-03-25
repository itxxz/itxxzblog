package com.itxxz.blog.login.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itxxz.blog.article.service.ArticleService;
import com.itxxz.blog.menu.service.MenuService;
import com.itxxz.blog.navbar.service.NavbarService;
import com.itxxz.blog.user.entity.User;
import com.itxxz.blog.user.service.UserService;
import com.itxxz.framework.base.BaseController;

@Controller
public class IndexController extends BaseController{
	
	private static transient final Logger log = LoggerFactory.getLogger(IndexController.class);
	
    @Autowired
    private UserService userService;
    
    @Autowired
	private NavbarService navbarService;
    
    @Autowired
	MenuService menuService;

    @Autowired
	ArticleService articleService;
    
    @RequestMapping("/mainFrame")
    public String mainFrame(User loginUser, Model model) {
    	log.info(getMessage("msg.return.index"));
    	navbarService.findAllNavs();
        return "admin/mainFrame";
    }

    @RequestMapping("/admin")
    public String admin(Model model) {
    	model.addAttribute("menuList", menuService.findAllMenus());
        return "admin/index";
    }
    
    @RequestMapping("/")
    public String index(Model model) {
    	log.info(getMessage("msg.return.index"));
    	model.addAttribute("navList",navbarService.findAllNavs());
    	model.addAttribute("articleList", articleService.findAllArticle());
        return "index";
    }
    @RequestMapping("/error")
    public String error() {
    	log.info(getMessage("msg.login.refuse"));
        return "index";
    }
    @RequestMapping("/success")
    @ResponseBody
    public String success() {
    	log.info(getMessage("msg.login.success"));
        return "success";
    }
    
    @RequestMapping("/refuse")
    @ResponseBody
    public String refuse() {
    	System.out.println("refuserefuserefuse");
    	log.info(getMessage("msg.login.refuse"));
        return "refuse";
    }
    
    @RequestMapping("/category-{id}")
    public String category(@PathVariable int id,Model model) {
    	model.addAttribute("categoryid",id);
    	model.addAttribute("navList",navbarService.findAllNavs());
    	model.addAttribute("category", navbarService.findByNavId(id));
    	log.info(getMessage("msg.category"));
        return "category";
    }
    @RequestMapping("/article-{id}.html")
    public String article(@PathVariable long id) {
    	log.info(getMessage("msg.article"));
        return "article";
    }
    @RequestMapping("/tag")
    public String blogTags() {
    	log.info(getMessage("msg.tag"));
        return "tag";
    }
}
