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
    <h2>Matheran</h2>
    <h3>Places to Visit</h3>
    <ul>
        <li>
            <strong>1. Charlotte Lake</strong>
            <p>Charlotte Lake is a beautiful and serene lake located in Matheran. Visitors can enjoy boating in the lake and admire the scenic surroundings.</p>
        </li>
        <li>
            <strong>2. Panorama Point</strong>
            <p>Panorama Point offers breathtaking panoramic views of the surrounding hills and valleys. It is a popular spot for nature lovers and photographers.</p>
        </li>
        <li>
            <strong>3. Louisa Point</strong>
            <p>Louisa Point provides stunning views of the sunset and the surrounding landscape. It is an ideal spot for a peaceful evening walk.</p>
        </li>
        <li>
            <strong>4. Echo Point</strong>
            <p>At Echo Point, visitors can experience the natural echo phenomenon. Shouting or clapping here produces a distinct echo.</p>
        </li>
    </ul>
    <div class="container">
        <img src="image/matheran/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
        <h1>Matheran Resort</h1>

        <div class="package-card">
            <h2>Day Stay Package</h2>
            <p>Enjoy our luxurious day stay package, which includes:</p>
            <ul>
                <li>Access to all resort amenities</li>
                <li>Complimentary breakfast and lunch</li>
                <li>Use of the swimming pool and spa</li>
                <li>Indoor and outdoor activities</li>
            </ul>
            <p class="highlight">Price: 2000 rupees</p>
        </div>

        <div class="package-card">
            <h2>Night Stay Package</h2>
            <p>Indulge in our exclusive night stay package, which includes:</p>
            <ul>
                <li>Luxurious overnight accommodation</li>
                <li>Complimentary breakfast and dinner</li>
                <li>Access to all resort amenities</li>
                <li>Evening entertainment and bonfire</li>
            </ul>
            <p class="highlight">Price: 3000 rupees</p>
        </div>
    </div>

    <div class="container">
        <img src="image/matheran/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
        <h1>Hillside Retreat</h1>

        <div class="package-card">
            <h2>Day Stay Package</h2>
            <p>Enjoy our luxurious day stay package, which includes:</p>
            <ul>
                <li>Access to all resort amenities</li>
                <li>Complimentary breakfast and lunch</li>
                <li>Use of the swimming pool and spa</li>
                <li>Indoor and outdoor activities</li>
            </ul>
            <p class="highlight">Price: 1500 rupees</p>
        </div>

        <div class="package-card">
            <h2>Night Stay Package</h2>
            <p>Indulge in our exclusive night stay package, which includes:</p>
            <ul>
                <li>Luxurious overnight accommodation</li>
                <li>Complimentary breakfast and dinner</li>
                <li>Access to all resort amenities</li>
                <li>Evening entertainment and bonfire</li>
            </ul>
            <p class="highlight">Price: 2500 rupees</p>
        </div>
    </div>
</div>
</body>
</html>
