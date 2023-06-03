<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>City Guide</title>
    <%@ include file="component/allcss.jsp"%>

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
<body style="background-repeat: no-repeat; background-size: 100% 150%; background-image:url(image/banner2.jpg)">
    <div class="container">
        <h1>City Guide</h1>
        <hr>
        <h2>Panchgani</h2>
        <h3>Places to Visit</h3>
        <ul>
            <li>
                <strong>1. Table Land</strong>
                <p>Table Land is the largest volcanic plateau in Asia and offers breathtaking views of the surrounding hills and valleys. It is a popular spot for picnics and outdoor activities.</p>
            </li>
            <li>
                <strong>2. Sydney Point</strong>
                <p>Sydney Point is a vantage point that provides panoramic views of the Krishna Valley, Dhom Dam, and Kamalgad Fort. It is a great place to enjoy the sunset.</p>
            </li>
            <li>
                <strong>3. Parsi Point</strong>
                <p>Parsi Point is another viewpoint that offers stunning views of the Dhom Dam and the Krishna Valley. It is a popular spot for morning walks and photography.</p>
            </li>
            <li>
                <strong>4. Mapro Garden</strong>
                <p>Mapro Garden is a famous strawberry farm and garden known for its delicious strawberry-based products. Visitors can enjoy fresh strawberries, explore the garden, and indulge in tasty treats.</p>
            </li>
        </ul>

        <div class="container">
            <img src="image/panchgani/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
            <h1>Mount View Resort</h1>

            <div class="package-card">
                <h2>Deluxe Room</h2>
                <p>Enjoy your stay in our spacious deluxe room, which includes:</p>
                <ul>
                    <li>Comfortable bed and seating area</li>
                    <li>Private balcony with mountain views</li>
                    <li>En-suite bathroom with hot water</li>
                    <li>24/7 room service</li>
                </ul>
                <p class="highlight">Price: 3000 rupees per night</p>
            </div>

            <div class="package-card">
                <h2>Cottage</h2>
                <p>Experience a cozy stay in our charming cottage, which includes:</p>
                <ul>
                    <li>Separate living area and bedroom</li>
                    <li>Private garden with outdoor seating</li>
                    <li>Fireplace for a warm ambiance</li>
                    <li>Complimentary breakfast</li>
                </ul>
                <p class="highlight">Price: 5000 rupees per night</p>
            </div>
        </div>

        <div class="container">
            <img src="image/panchgani/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
            <h1>Ravine Hotel</h1>

            <div class="package-card">
                <h2>Standard Room</h2>
                <p>Enjoy your stay in our comfortable standard room, which includes:</p>
                <ul>
                    <li>Cozy bed and seating area</li>
                    <li>Private balcony with valley views</li>
                    <li>En-suite bathroom with hot water</li>
                    <li>24/7 room service</li>
                </ul>
                <p class="highlight">Price: 2500 rupees per night</p>
            </div>

            <div class="package-card">
                <h2>Deluxe Suite</h2>
                <p>Indulge in luxury with our spacious deluxe suite, which includes:</p>
                <ul>
                    <li>Separate living area and bedroom</li>
                    <li>Private terrace with panoramic views</li>
                    <li>Jacuzzi and private dining area</li>
                    <li>Complimentary breakfast</li>
                </ul>
                <p class="highlight">Price: 6000 rupees per night</p>
            </div>
        </div>
    </div>
</body>
</html>
