  
/**  
 * 文件名：UploadController.java  
 *   
 * 日期：2015年3月20日  
 *  
*/  
    
package com.itxxz.blog.pictrue.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException;
import org.apache.commons.fileupload.FileUploadBase.SizeLimitExceededException;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sun.misc.BASE64Decoder;

  
/**  
 * 
 * @author: IT学习者-螃蟹
 * 
 * @官网 www.itxxz.com
 *
 * @version: 2015年3月20日 上午10:22:44   
 */
@Controller
public class UploadController {
	
	
	/**
	 * 图片上传
	 * 
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "imagesUploader")
	@ResponseBody
	public String imgUpload(HttpServletRequest request,HttpServletResponse response,
			@RequestParam("upload") MultipartFile upload) throws IOException {
		System.out.println("uploadFileName:"+upload.getOriginalFilename());
		
StringBuilder result = new StringBuilder();

		response.setCharacterEncoding("utf-8");
		// CKEditor提交的很重要的一个参数
		String callback = request.getParameter("CKEditorFuncNum");
		String expandedName = ""; // 文件扩展名
		String uploadContentType = upload.getContentType();
		System.out.println("uploadContentType:"+upload.getContentType());
		if (uploadContentType.equals("image/pjpeg")
				|| uploadContentType.equals("image/jpeg")) {
			// IE6上传jpg图片的headimageContentType是image/pjpeg，而IE9以及火狐上传的jpg图片是image/jpeg
			expandedName = ".jpg";
		} else if (uploadContentType.equals("image/png")
				|| uploadContentType.equals("image/x-png")) {
			// IE6上传的png图片的headimageContentType是"image/x-png"
			expandedName = ".png";
		} else if (uploadContentType.equals("image/gif")) {
			expandedName = ".gif";
		} else if (uploadContentType.equals("image/bmp")) {
			expandedName = ".bmp";
		} else {
			result.append("<script type=\"text/javascript\">");
			result.append("window.parent.CKEDITOR.tools.callFunction(" + callback
					+ ",''," + "'文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）');");
			result.append("</script>");
			return result.toString();
		}
		if (upload.getSize() > 600 * 1024) {
			result.append("<script type=\"text/javascript\">");
			result.append("window.parent.CKEDITOR.tools.callFunction(" + callback
					+ ",''," + "'文件大小不得大于600k');");
			result.append("</script>");
			return result.toString();
		}

		InputStream is = upload.getInputStream();
		//图片上传路径
		String uploadPath = request.getSession().getServletContext().getRealPath("uploads");
		String fileName = java.util.UUID.randomUUID().toString(); // 采用时间+UUID的方式随即命名
		fileName += expandedName;
		File file = new File(uploadPath);
		if (!file.exists()) { // 如果路径不存在，创建
			file.mkdirs();
		}
		File toFile = new File(uploadPath, fileName);
		OutputStream os = new FileOutputStream(toFile);
		byte[] buffer = new byte[1024];
		int length = 0;
		while ((length = is.read(buffer)) > 0) {
			os.write(buffer, 0, length);
		}
		is.close();
		os.close();

		// 返回"图像"选项卡并显示图片  request.getContextPath()为web项目名 
		result.append("<script type=\"text/javascript\">");
		result.append("window.parent.CKEDITOR.tools.callFunction(" + callback
				+ ",'" + request.getContextPath() + "/uploads/" + fileName + "','')");
		result.append("</script>");
		return result.toString();
	}

}
