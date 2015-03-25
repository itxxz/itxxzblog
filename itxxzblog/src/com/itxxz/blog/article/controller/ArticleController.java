  
/**  
 * 文件名：ArticleController.java  
 *   
 * 日期：2015年3月19日  
 *  
*/  
    
package com.itxxz.blog.article.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itxxz.blog.article.entity.Article;
import com.itxxz.blog.article.service.ArticleService;
import com.itxxz.blog.navbar.service.NavbarService;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月19日 下午8:56:30   
 */
@Controller
@RequestMapping("admin")
public class ArticleController {
	
	@Autowired
	ArticleService articleService;
	@Autowired
	private NavbarService navbarService;
	
	@RequestMapping(value = "/createNewArticle")
	public String createNewArticle(Model model){
		model.addAttribute("navList",navbarService.findAllNavs());
		return "admin/article";
	}
	
	@RequestMapping(value = "/saveArticle")
	@ResponseBody
	public String saveArticle(Article article,Model model){
		articleService.createNewArticle(article);
		return "success";
	}
	
	@RequestMapping(value = "/editArticle")
	public String editArticle(Article article,Model model){
		article = articleService.findByArticleId(article.getId());
		String content = "";
		try {
			content = new String(article.getArticleContent(), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		model.addAttribute("article",article);
		model.addAttribute("content",content);
		return "admin/article";
	}
	
	@RequestMapping(value = "/updateArticle")
	public String updateArticle(Article article,Model model){
		articleService.updateArticle(article);
		return "success";
	}
	
	@RequestMapping(value = "/articleList")
	public String articleList(){
		return "admin/articleList";
	}
}