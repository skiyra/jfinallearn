package com.xiaomuedu.article;

import java.util.Date;
import java.util.List;

import com.jfinal.core.Controller;
import com.xiaomuedu.common.model.Article;

public class ArticleController extends Controller {
	/**
	 * 前台详情
	 */
	public void detail(){
		Article article=Article.dao.findById(getPara(0));
		setAttr("article", article);
		renderJsp("detail.jsp");
	}
	/**
	 * 后台列表管理页面
	 */
	public void index(){
		List<Article> articles=Article.dao.find("select * from article");
		setAttr("articles", articles);
		renderJsp("list.jsp");
	}
	/**
	 * 删除
	 */
	public void del(){
		Article.dao.deleteById(getPara(0));
		redirect("/article");
	}
	/**
	 * 编辑
	 */
	public void edit(){
		Integer articleId=getParaToInt(0);
		if(articleId!=null&&articleId>0){
			Article article=Article.dao.findById(articleId);
			setAttr("article", article);
		}
		renderJsp("form.jsp");
	}
	
	/**
	 * 表单提交
	 */
	public void submit(){
		Article article=getModel(Article.class, "article");
		
		if(article!=null){
			if(article.getId()!=null&&article.getId()>0){
				article.update();
			}else{
				article.setCreateTime(new Date());				
				article.save();
			}
		}
		redirect("/article");
	}
}
