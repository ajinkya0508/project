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
        <h2>Shimla</h2>
        <h3>Places to Visit</h3>
        <ul>
            <li>
                <strong>1. Mall Road</strong>
                <p>Mall Road is the main street in Shimla and a popular shopping and entertainment hub. It offers a range of shops, cafes, restaurants, and attractions, including the Ridge, Christ Church, and Gaiety Theater.</p>
            </li>
            <li>
                <strong>2. The Ridge</strong>
                <p>The Ridge is a large open space located along the Mall Road. It offers panoramic views of the surrounding mountains and serves as a venue for cultural events and festivals, including the Summer Festival.</p>
            </li>
            <li>
                <strong>3. Jakhu Temple</strong>
                <p>Jakhu Temple is a famous temple dedicated to Lord Hanuman. It is located on Jakhu Hill, the highest point in Shimla, and offers breathtaking views of the city. Visitors can also encounter monkeys along the path to the temple.</p>
            </li>
            <li>
                <strong>4. Kufri</strong>
                <p>Kufri is a picturesque hill station located near Shimla. It is known for its scenic beauty, snow-capped mountains, and adventure activities like skiing and horse riding. The Himalayan Nature Park in Kufri is also worth a visit.</p>
            </li>
        </ul>
        <div class="container">
            <img src="image/shimla/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
            <h1>Hotel Willow Banks</h1>
    
            <div class="package-card">
                <h2>Day Stay Package</h2>
                <p>Enjoy our luxurious day stay package, which includes:</p>
                <ul>
                    <li>Access to all hotel amenities</li>
                    <li>Complimentary breakfast and lunch</li>
                    <li>Use of the swimming pool and fitness center</li>
                    <li>Relaxing spa treatment</li>
                </ul>
                <p class="highlight">Price: 1000 rupees</p>
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
                <p class="highlight">Price: 2000 rupees</p>
            </div>
        </div>
        
        <div class="container">
            <img src="image/shimla/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
            <h1>Hotel Clarkes</h1>
    
            <div class="package-card">
                <h2>Day Stay Package</h2>
                <p>Enjoy our luxurious day stay package, which includes:</p>
                <ul>
                    <li>Access to all hotel amenities</li>
                    <li>Complimentary breakfast and lunch</li>
                    <li>Use of the swimming pool and fitness center</li>
                    <li>Relaxing spa treatment</li>
                </ul>
                <p class="highlight">Price: 1500 rupees</p>
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
                <p class="highlight">Price: 2500 rupees</p>
            </div>
        </div>
    </div>
</body>
</html>
