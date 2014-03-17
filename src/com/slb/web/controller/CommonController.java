package com.slb.web.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;

/**
 * 通用控制器
 * @author GISApe
 * @date 2013/11
 * 
 */
@Controller  
@RequestMapping("common")
public class CommonController {
	
	private static Logger _logger = Logger.getLogger(CommonController.class); 
	
	@Resource(name="captchaProducer")
	private Producer captchaProducer = null; 
	
	
	@RequestMapping("/getverifycodeimage")  
    public void getVerifyCodeImage(HttpServletRequest request, HttpServletResponse response) throws IOException {  
		_logger.debug("Get VerifyCode start...");
		
		response.setDateHeader("Expires", 0);  
        // 设置报头，无缓存  
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");  
        // 设置IE无缓存 
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");  
        // 设置报头，无缓存   
        response.setHeader("Pragma", "no-cache");  
        // 图片格式 
        response.setContentType("image/jpeg");  
        // 生成图片code  
        String capText = captchaProducer.createText();  
        // 写进session， 比对前台输入    
        request.getSession().setAttribute("verifyCode", capText);  
        // 存储code 
        request.getSession().setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);  
        // 生成带有code的 图片
        BufferedImage bi = captchaProducer.createImage(capText);  
        ServletOutputStream out = response.getOutputStream();  
        // 输出图片 
        ImageIO.write(bi, "jpg", out);  
        try {  
            out.flush();  
        } finally {  
            out.close();  
        }
        
        _logger.debug("Get VerifyCode end");
        
        // 每次刷新清空session中ERROR_LOGIN信息
        request.getSession().removeAttribute("ERROR_LOGIN");
    } 
} 
