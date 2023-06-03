<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>City Guide</title>
    <%@ include file="component/allcss.jsp" %>
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
    <h2>Nadia</h2>
    <h3>Places to Visit</h3>
    <ul>
        <li>
            <strong>1. Krishnanagar Rajbari</strong>
            <p>Krishnanagar Rajbari is a magnificent palace known for its architectural beauty. It was the residence of the rulers of Nadia and showcases the grandeur of the bygone era. The palace features intricate artwork, stunning interiors, and beautiful gardens.</p>
        </li>
        <li>
            <strong>2. Mayapur</strong>
            <p>Mayapur is a prominent pilgrimage site and the headquarters of the International Society for Krishna Consciousness (ISKCON). It is known for the famous ISKCON temple dedicated to Lord Krishna. The temple complex attracts devotees from around the world.</p>
        </li>
        <li>
            <strong>3. Nabadwip</strong>
            <p>Nabadwip is a sacred town associated with the birth and early life of Sri Chaitanya Mahaprabhu, a renowned saint and social reformer. It is home to numerous ancient temples, including the Nidaya Ghat and the Dwadash Mandir, which are of great religious significance.</p>
        </li>
        <li>
            <strong>4. Bethuadahari Wildlife Sanctuary</strong>
            <p>Bethuadahari Wildlife Sanctuary is a natural habitat for various species of birds, reptiles, and animals. It is an ideal place for nature lovers and bird watchers. Visitors can enjoy nature trails, bird watching, and wildlife photography.</p>
        </li>
    </ul>

    <div class="container">
        <img src="image/nadia/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
        <h1>The Gateway Hotel</h1>

        <div class="package-card">
            <h2>Day Stay Package</h2>
            <p>Enjoy our luxurious day stay package, which includes:</p>
            <ul>
                <li>Access to all hotel amenities</li>
                <li>Complimentary breakfast and lunch</li>
                <li>Use of the swimming pool and fitness center</li>
                <li>Relaxing spa treatment</li>
            </ul>
            <p class="highlight">Price: 2000 rupees</p>
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
            <p class="highlight">Price: 3000 rupees</p>
        </div>
    </div>

    <div class="container">
        <img src="image/nadia/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
        <h1+Hotel Sonar Bangla</h1>

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
