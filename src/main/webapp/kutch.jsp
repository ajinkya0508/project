<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>City Guide</title>
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
    <h2>Kutch</h2>
    <h3>Places to Visit</h3>
    <ul>
        <li>
            <strong>1. Rann of Kutch</strong>
            <p>The Rann of Kutch is a vast salt marshland known for its stunning white desert landscape. It is a popular tourist destination, especially during the Rann Utsav, a festival that showcases the vibrant culture and traditions of the region.</p>
        </li>
        <li>
            <strong>2. Bhuj</strong>
            <p>Bhuj is a historic city in Kutch known for its rich heritage and architecture. It is home to several palaces, temples, and museums that offer a glimpse into the region's history and culture. The Prag Mahal and Aina Mahal are notable attractions in Bhuj.</p>
        </li>
        <li>
            <strong>3. Mandvi Beach</strong>
            <p>Mandvi Beach is a picturesque coastal stretch with golden sand and clear blue waters. It is an ideal spot for relaxation and enjoying water activities like swimming and sunbathing. The beach is also famous for the Vijay Vilas Palace, a stunning royal residence.</p>
        </li>
        <li>
            <strong>4. Kutch Desert Wildlife Sanctuary</strong>
            <p>The Kutch Desert Wildlife Sanctuary is a protected area that spans across the desert landscape of Kutch. It is home to various species of wildlife, including the Indian wild ass, desert fox, and several bird species. Visitors can explore the sanctuary through safari tours.</p>
        </li>
    </ul>
    <div class="container">
        <img src="image/kutch/hotel-1.jpg" alt="Hotel Banner" class="banner-image">
        <h1>The White Desert Resort</h1>
        <div class="package-card">
            <h2>Day Stay Package</h2>
            <p>Enjoy our luxurious day stay package, which includes:</p>
            <ul>
                <li>Access to all hotel amenities</li>
                <li>Complimentary breakfast and lunch</li>
                <li>Use of the swimming pool and fitness center</li>
                <li>Guided tour to Rann of Kutch</li>
            </ul>
            <p class="highlight">Price: 3500 rupees</p>
        </div>
        <div class="package-card">
            <h2>Night Stay Package</h2>
            <p>Indulge in our exclusive night stay package, which includes:</p>
            <ul>
                <li>Luxurious overnight accommodation</li>
                <li>Complimentary breakfast and dinner</li>
                <li>Access to all hotel amenities</li>
                <li>Cultural evening with local performances</li>
            </ul>
            <p class="highlight">Price: 2500 rupees</p>
        </div>
    </div>
    <div class="container">
        <img src="image/kutch/hotel-2.jpg" alt="Hotel Banner" class="banner-image">
        <h1>The Royal Palace Hotel</h1>
        <div class="package-card">
            <h2>Day Stay Package</h2>
            <p>Enjoy our luxurious day stay package, which includes:</p>
            <ul>
                <li>Access to all hotel amenities</li>
                <li>Complimentary breakfast and lunch</li>
                <li>Use of the swimming pool and fitness center</li>
                <li>Spa treatment</li>
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
                <li>Evening entertainment and cultural programs</li>
            </ul>
            <p class="highlight">Price: 2000 rupees</p>
        </div>
    </div>
</div>
</body>
</html>
