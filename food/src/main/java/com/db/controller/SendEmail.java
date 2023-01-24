package com.db.controller;

import javax.mail.*;
import javax.mail.internet.*;


import java.util.Properties;
import java.util.Random;

public class SendEmail {



	public static void sendOTP(String email) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("manikandanpalanidurai@gmail.com", "yvtvxbwlkardjctv");
                    }
                });
        Random rand = new Random();
        int num = rand.nextInt(1000000);
        String strNum = Integer.toString(num);
        String nums = "";
        String letters = "";
        for (int i = 0; i < strNum.length(); i++) {
            char c = strNum.charAt(i);
            if (Character.isDigit(c)) {
                nums += c;
            } else if (Character.isLetter(c)) {
                letters += c;
            }
        }
        String otp = nums + letters;
        ValidateOtp ValidateOtp = new ValidateOtp();
        ValidateOtp.setOtp(otp);
        
       

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("manikandanpalanidurai@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(email));
            message.setSubject("OTP");
            message.setText("Your OTP is: "+otp );

            Transport.send(message);

            System.out.println("OTP sent successfully");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}



