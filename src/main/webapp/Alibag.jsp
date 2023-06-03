<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>City Guide</title>
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
<body>
<div class="container">
    <h1>City Guide</h1>
    <hr>
    <h2>Alibag</h2>
    <h3>Places to Visit</h3>
    <ul>
        <li>
            <strong>1. Alibag Beach</strong>
            <p>Alibag Beach is a popular beach destination known for its scenic beauty and tranquility. Visitors can relax on the sandy shores, take a dip in the Arabian Sea, or enjoy water sports activities.</p>
        </li>
        <li>
            <strong>2. Kolaba Fort</strong>
            <p>Kolaba Fort is a historic sea fort located near Alibag Beach. It was built by the Maratha Empire in the 17th century and offers stunning views of the coastline.</p>
        </li>
        <li>
            <strong>3. Murud-Janjira Fort</strong>
            <p>Murud-Janjira Fort is a magnificent fort situated on an island near Alibag. It is known for its impressive architecture and rich history. Visitors can take a ferry to reach the fort and explore its ancient structures.</p>
        </li>
        <li>
            <strong>4. Kashid Beach</strong>
            <p>Kashid Beach is a beautiful stretch of coastline famous for its clear blue waters and white sandy beaches. It is an ideal spot for swimming, sunbathing, and picnicking.</p>
        </li>
    </ul>
    
    <div class="container">
        <img src="image/alibag/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
        <h1>The Fern Silvanus Resort</h1>

        <div class="package-card">
            <h2>Day Stay Package</h2>
            <p>Enjoy our luxurious day stay package, which includes:</p>
            <ul>
                <li>Access to all resort amenities</li>
                <li>Complimentary breakfast and lunch</li>
                <li>Use of the swimming pool and spa facilities</li>
                <li>Indoor and outdoor recreational activities</li>
            </ul>
            <p class="highlight">Price: 3500 rupees</p>
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
            <p class="highlight">Price: 5000 rupees</p>
        </div>
    </div>

    <div class="container">
        <img src="image/alibag/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
        <h1>Radisson Blu Resort & Spa</h1>

        <div class="package-card">
            <h2>Day Stay Package</h2>
            <p>Enjoy our luxurious day stay package, which includes:</p>
            <ul>
                <li>Access to all resort amenities</li>
                <li>Complimentary breakfast and lunch</li>
                <li>Use of the swimming pool and fitness center</li>
                <li>Relaxing spa treatment</li>
            </ul>
            <p class="highlight">Price: 4000 rupees</p>
        </div>

        <div class="package-card">
            <h2>Night Stay Package</h2>
            <p>Indulge in our exclusive night stay package, which includes:</p>
            <ul>
                <li>Luxurious overnight accommodation</li>
                <li>Complimentary breakfast and dinner</li>
                <li>Access to all resort amenities</li>
                <li>Evening entertainment and events</li>
            </ul>
            <p class="highlight">Price: 6000 rupees</p>
        </div>
    </div>
</div>
</body>
</html>
