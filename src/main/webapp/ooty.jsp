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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>City Guide - Ooty</title>
<style>
    /* CSS styles for the city guide */
    /* ... */

</style>
</head>
<body>
    <div class="container">
        <h1>City Guide</h1>
        <hr>
        <h2>Ooty</h2>
        <h3>Places to Visit</h3>
        <ul>
            <li>
                <strong>1. Botanical Gardens</strong>
                <p>The Botanical Gardens in Ooty are a treat for nature lovers. They feature a vast collection of exotic plants, flowers, and trees. Visitors can enjoy leisurely strolls, admire the vibrant colors, and relax in the serene ambiance of the gardens.</p>
            </li>
            <li>
                <strong>2. Ooty Lake</strong>
                <p>Ooty Lake is a popular tourist spot for boating and picnics. Surrounded by lush greenery, the lake offers stunning views and a peaceful atmosphere. Visitors can rent paddleboats or rowboats and enjoy a leisurely ride on the tranquil waters.</p>
            </li>
            <li>
                <strong>3. Doddabetta Peak</strong>
                <p>Doddabetta Peak is the highest peak in the Nilgiri Hills and offers breathtaking views of the surrounding valleys and tea plantations. Visitors can reach the peak by road and enjoy panoramic vistas from the observation tower.</p>
            </li>
            <li>
                <strong>4. Tea Gardens</strong>
                <p>Ooty is known for its tea plantations, and a visit to the tea gardens is a must for tea enthusiasts. Visitors can witness the tea-making process, stroll through the lush green fields, and enjoy the fresh aroma of tea leaves.</p>
            </li>
        </ul>
        <div class="container">
            <img src="image/ooty/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
            <h1>Hotel Sarovar New</h1>
    
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
            <img src="image/ooty/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
            <h1>Hotel La Monatana</h1>
    
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
