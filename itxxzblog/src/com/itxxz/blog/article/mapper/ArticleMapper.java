  
/**  
 * 文件名：ArticleMapper.java  
 *   
 * 日期：2015年3月19日  
 *  
*/  
    
package com.itxxz.blog.article.mapper;

import org.springframework.stereotype.Repository;

import com.itxxz.blog.article.entity.Article;
import com.itxxz.framework.base.BaseMapper;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月19日 下午8:56:53   
 */
@Repository("articleMapper")
public interface ArticleMapper extends BaseMapper<Article>{

	public Article findByArticleId(int articleId);
}
