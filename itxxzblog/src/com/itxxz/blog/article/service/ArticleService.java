  
/**  
 * 文件名：ArticleService.java  
 *   
 * 日期：2015年3月19日  
 *  
*/  
    
package com.itxxz.blog.article.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itxxz.blog.article.entity.Article;
import com.itxxz.blog.article.mapper.ArticleMapper;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月19日 下午8:57:27   
 */
@Service
public class ArticleService {
	
	@Autowired
	ArticleMapper articleMapper;
	
	public void createNewArticle(Article article){
		article.setCreateTime(new Date());
		articleMapper.insert(article);
	}
	
	public void updateArticle(Article article){
		articleMapper.update(article);
	}
	
	public void dateArticle(Article article){
		articleMapper.delete(article);
	}
	
	public Article findByArticleId(int articleId){
		return articleMapper.findByArticleId(articleId);
	}
	
	public List<Article> findAllArticle(){
		return articleMapper.findAll();
	}

}
