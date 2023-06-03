<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>City Guide</title>
    <style>
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
    <h2>Amboli</h2>
    <h3>Places to Visit</h3>
    <ul>
        <li>
            <strong>1. Amboli Waterfall</strong>
            <p>Amboli Waterfall is a scenic natural attraction located in Amboli. It offers a mesmerizing view of water cascading down the rocks amidst lush green surroundings. Visitors can enjoy the beauty of the waterfall and spend time in its serene atmosphere.</p>
        </li>
        <li>
            <strong>2. Amboli Ghat</strong>
            <p>Amboli Ghat is a picturesque mountain pass known for its breathtaking views of the Western Ghats. It is a popular spot for nature enthusiasts and trekkers. The misty hills, dense forests, and panoramic landscapes make it a must-visit destination in Amboli.</p>
        </li>
        <li>
            <strong>3. Mahadevgad Fort</strong>
            <p>Mahadevgad Fort is a historic fortification situated atop a hill in Amboli. It offers panoramic views of the surrounding valleys and forests. Visitors can explore the fort's ruins and enjoy the trekking trail that leads to it.</p>
        </li>
        <li>
            <strong>4. Amboli Sunset Point</strong>
            <p>Amboli Sunset Point is a popular viewpoint where visitors can witness mesmerizing sunset views. The viewpoint provides a stunning panoramic view of the Western Ghats and the valleys below, making it a perfect spot to relax and enjoy the natural beauty.</p>
        </li>
    </ul>
</div>

<div class="container">
    <img src="image/amboli/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
    <h1>Amboli Hill Resort</h1>

    <div class="package-card">
        <h2>Day Stay Package</h2>
        <p>Enjoy our luxurious day stay package, which includes:</p>
        <ul>
            <li>Access to all resort amenities</li>
            <li>Complimentary breakfast and lunch</li>
            <li>Use of the swimming pool and fitness center</li>
            <li>Indoor and outdoor activities</li>
        </ul>
        <p class="highlight">Price: 2500 rupees</p>
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
        <p class="highlight">Price: 1500 rupees</p>
    </div>
</div>

<div class="container">
    <img src="image/amboli/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
    <h1>Amboli Eco Resort</h1>

    <div class="package-card">
        <h2>Day Stay Package</h2>
        <p>Enjoy our luxurious day stay package, which includes:</p>
        <ul>
            <li>Access to all resort amenities</li>
            <li>Complimentary breakfast and lunch</li>
            <li>Use of the swimming pool and fitness center</li>
            <li>Nature walks and bird watching</li>
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
            <li>Indoor games and cultural programs</li>
        </ul>
        <p class="highlight">Price: 1800 rupees</p>
    </div>
</div>
</body>
</html>
