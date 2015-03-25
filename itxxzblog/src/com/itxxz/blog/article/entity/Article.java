  
/**  
 * 文件名：Article.java  
 *   
 * 日期：2015年3月19日  
 *  
*/  
    
package com.itxxz.blog.article.entity;

import java.util.Date;

import com.itxxz.framework.base.AbstractDO;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月19日 下午8:56:38   
 */
public class Article extends AbstractDO {

	private static final long serialVersionUID = 230793101204391615L;
	
	private int id;
	private String articleName;
	private byte[] articleContent;
	private int articleType;
	private int publishOrDraft;
	private int isOnTop;
	private int isRecommend;
	private int isFocus;
	private String summary;
	private int readingTimes;
	private Date createTime;
	private int author;
	private int categoryid;
	private String tagids;
	private int commentid;
	private String smallImagePath;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getArticleName() {
		return articleName;
	}
	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}
	public byte[] getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(byte[] articleContent) {
		this.articleContent = articleContent;
	}
	public int getArticleType() {
		return articleType;
	}
	public void setArticleType(int articleType) {
		this.articleType = articleType;
	}
	public int getPublishOrDraft() {
		return publishOrDraft;
	}
	public void setPublishOrDraft(int publishOrDraft) {
		this.publishOrDraft = publishOrDraft;
	}
	public int getIsOnTop() {
		return isOnTop;
	}
	public void setIsOnTop(int isOnTop) {
		this.isOnTop = isOnTop;
	}
	public int getIsRecommend() {
		return isRecommend;
	}
	public void setIsRecommend(int isRecommend) {
		this.isRecommend = isRecommend;
	}
	public int getIsFocus() {
		return isFocus;
	}
	public void setIsFocus(int isFocus) {
		this.isFocus = isFocus;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public int getReadingTimes() {
		return readingTimes;
	}
	public void setReadingTimes(int readingTimes) {
		this.readingTimes = readingTimes;
	}
	public Date getCreateTime() {

		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public int getAuthor() {
		return author;
	}
	public void setAuthor(int author) {
		this.author = author;
	}
	public int getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}
	public String getTagids() {
		return tagids;
	}
	public void setTagids(String tagids) {
		this.tagids = tagids;
	}
	public int getCommentid() {
		return commentid;
	}
	public void setCommentid(int commentid) {
		this.commentid = commentid;
	}
	
	public String getSmallImagePath() {
		return smallImagePath;
	}
	public void setSmallImagePath(String smallImagePath) {
		this.smallImagePath = smallImagePath;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Article [id=");
		builder.append(id);
		builder.append(", articleName=");
		builder.append(articleName);
		builder.append(", articleContent=");
		builder.append(articleContent);
		builder.append(", articleType=");
		builder.append(articleType);
		builder.append(", publishOrDraft=");
		builder.append(publishOrDraft);
		builder.append(", isOnTop=");
		builder.append(isOnTop);
		builder.append(", isRecommend=");
		builder.append(isRecommend);
		builder.append(", isFocus=");
		builder.append(isFocus);
		builder.append(", summary=");
		builder.append(summary);
		builder.append(", readingTimes=");
		builder.append(readingTimes);
		builder.append(", createTime=");
		builder.append(createTime);
		builder.append(", author=");
		builder.append(author);
		builder.append(", categoryid=");
		builder.append(categoryid);
		builder.append(", tagids=");
		builder.append(tagids);
		builder.append(", commentid=");
		builder.append(commentid);
		builder.append("]");
		return builder.toString();
	}
	
}
