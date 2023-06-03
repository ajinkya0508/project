<%@page import="com.dao.UserDao"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.dto.AppointmentInfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DbConnection"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }
        
        h1 {
            text-align: center;
            color: #333333;
        }
        
        hr {
            border: none;
            border-top: 2px solid #999999;
            margin: 20px 0;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        
        .city-image {
            display: block;
            margin: 0 auto;
            max-width: 100%;
            height: auto;
        }
        
        h2 {
            text-align: center;
            color: #333333;
            margin-top: 20px;
        }
        
        ul {
            list-style-type: none;
            padding: 0;
            margin-top: 20px;
        }
        
        li {
            margin-bottom: 10px;
            padding: 10px;
            background-color: #f7f7f7;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        li strong {
            color: #333333;
        }
        
        li p {
            margin: 5px 0 0;
            color: #666666;
        }
        
                
        
        .banner-image {
            display: block;
            width: 100%;
            max-height: 300px;
            object-fit: cover;
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
            margin: auto;
        }
        
        .package-card {
            margin-top: 20px;
            background-color: #f7f7f7;
            border-radius: 4px;
            padding: 20px;
        }
        
        .package-card h2 {
            color: #333333;
        }
        
        .package-card p {
            margin: 10px 0;
            color: #666666;
        }
        
        .package-card .highlight {
            color: #ff6600;
            font-weight: bold;
        }
    </style>
</head>
<body style="background-repeat: no-repeat; background-size: 100% 150%; background-image:url(image/banner1.jpg)">
    <div class="container">
        <h1>City Guide</h1>
        <hr>
        <h2>Rajkot</h2>
        <h3>Places to Visit</h3>
        <ul>
            <li>
                <strong>1. Watson Museum</strong>
                <p>The Watson Museum is a significant historical museum in Rajkot. It showcases a wide range of artifacts and exhibits related to Rajkot's history, including ancient artifacts, textiles, sculptures, and coins.</p>
            </li>
            <li>
                <strong>2. Kaba Gandhi No Delo</strong>
                <p>Kaba Gandhi No Delo is the ancestral home of Mahatma Gandhi, the father of the nation. It has now been converted into a museum that displays photographs, personal belongings, and memorabilia associated with Mahatma Gandhi and his life.</p>
            </li>
            <li>
                <strong>3. Swaminarayan Temple</strong>
                <p>The Swaminarayan Temple in Rajkot is a beautiful and serene place of worship. It is known for its intricate architecture, carved pillars, and peaceful atmosphere. Visitors can also witness the daily rituals and prayers performed at the temple.</p>
            </li>
            <li>
                <strong>4. Rotary Dolls Museum</strong>
                <p>The Rotary Dolls Museum is a unique museum that houses a vast collection of dolls from different countries. It is a visual treat for both children and adults and provides insights into different cultures and traditions.</p>
            </li>
        </ul>
        <div class="container">
        	<img src="image/rajkot/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
        	<h1>The Imperial Palace</h1>
        
	        <div class="package-card">
	            <h2>Day Stay Package</h2>
	            <p>Enjoy our luxurious day stay package, which includes:</p>
	            <ul>
	                <li>Access to all hotel amenities</li>
	                <li>Complimentary breakfast and lunch</li>
	                <li>Use of the swimming pool and fitness center</li>
	                <li>Relaxing spa treatment</li>
	            </ul>
	            <p class="highlight">Price: 3000 rupees</p>
	        </div>
	        
	        <div class="package-card">
	            <h2>Night Stay Package</h2>
	            <p>Indulge in our exclusive night stay package, which includes:</p>
	            <ul>
	                <li>Luxurious overnight accommodation</li>
	                <li>Complimentary breakfast and dinner</li>
	                <li>Access to all hotel amenities</li>
	                <li>Evening entertainment and events</li>
	            </ul>
	            <p class="highlight">Price: 5000 rupees</p>
	        </div>
    </div>
    
    <div class="container">
        	<img src="image/rajkot/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
        	<h1>Regenta RPJ Rajkot</h1>
        
	        <div class="package-card">
	            <h2>Day Stay Package</h2>
	            <p>Enjoy our luxurious day stay package, which includes:</p>
	            <ul>
	                <li>Access to all hotel amenities</li>
	                <li>Complimentary breakfast and lunch</li>
	                <li>Use of the swimming pool and fitness center</li>
	                <li>Relaxing spa treatment</li>
	            </ul>
	            <p class="highlight">Price: 2500 rupees</p>
	        </div>
	        
	        <div class="package-card">
	            <h2>Night Stay Package</h2>
	            <p>Indulge in our exclusive night stay package, which includes:</p>
	            <ul>
	                <li>Luxurious overnight accommodation</li>
	                <li>Complimentary breakfast and dinner</li>
	                <li>Access to all hotel amenities</li>
	                <li>Evening entertainment and events</li>
	            </ul>
	            <p class="highlight">Price: 4000 rupees</p>
	        </div>
    </div>
    </div>
</body>
</html>
