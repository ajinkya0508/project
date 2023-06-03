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
<title>City Guide - Ranchi</title>
<style>
    /* CSS styles for the city guide */
    /* ... */

</style>
</head>
<body>
    <div class="container">
        <h1>City Guide</h1>
        <hr>
        <h2>Ranchi</h2>
        <h3>Places to Visit</h3>
        <ul>
            <li>
                <strong>1. Tagore Hill</strong>
                <p>Tagore Hill is a scenic hill located in Ranchi, named after the famous poet Rabindranath Tagore. It offers panoramic views of the city and is a popular spot for picnics and leisurely walks. The hill also houses a museum dedicated to Rabindranath Tagore.</p>
            </li>
            <li>
                <strong>2. Rock Garden</strong>
                <p>Rock Garden is a beautiful garden located near Kanke Road in Ranchi. It features unique sculptures made of rocks and is known for its serene ambiance. Visitors can relax amidst the natural surroundings and enjoy the artistic creations.</p>
            </li>
            <li>
                <strong>3. Hundru Falls</strong>
                <p>Hundru Falls is a breathtaking waterfall located about 45 kilometers from Ranchi. It is formed by the Subarnarekha River cascading down from a height of around 98 meters. Visitors can enjoy the scenic beauty, go for a swim, or indulge in adventure activities like rafting.</p>
            </li>
            <li>
                <strong>4. Ranchi Lake</strong>
                <p>Ranchi Lake, also known as Ranchi Water Sports Complex, is an artificial lake situated in the heart of Ranchi. It offers boating facilities and is a popular recreational spot for locals and tourists. Visitors can enjoy a peaceful boat ride and soak in the serene atmosphere.</p>
            </li>
        </ul>
        <div class="container">
            <img src="image/ranchi/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
            <h1>Hotel Ranchi Ashok</h1>
    
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
            <img src="image/ranchi/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
            <h1>Hotel Le Lac Sarovar</h1>
    
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
