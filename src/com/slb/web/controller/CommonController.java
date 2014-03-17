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
 * ͨ�ÿ�����
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
        // ���ñ�ͷ���޻���  
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");  
        // ����IE�޻��� 
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");  
        // ���ñ�ͷ���޻���   
        response.setHeader("Pragma", "no-cache");  
        // ͼƬ��ʽ 
        response.setContentType("image/jpeg");  
        // ����ͼƬcode  
        String capText = captchaProducer.createText();  
        // д��session�� �ȶ�ǰ̨����    
        request.getSession().setAttribute("verifyCode", capText);  
        // �洢code 
        request.getSession().setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);  
        // ���ɴ���code�� ͼƬ
        BufferedImage bi = captchaProducer.createImage(capText);  
        ServletOutputStream out = response.getOutputStream();  
        // ���ͼƬ 
        ImageIO.write(bi, "jpg", out);  
        try {  
            out.flush();  
        } finally {  
            out.close();  
        }
        
        _logger.debug("Get VerifyCode end");
        
        // ÿ��ˢ�����session��ERROR_LOGIN��Ϣ
        request.getSession().removeAttribute("ERROR_LOGIN");
    } 
} 
