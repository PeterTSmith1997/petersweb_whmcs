<!--SERVICES-->
<div class="container-fluid services">
    <div class="featured-page container">
        <p class="feature-icon"><i class="fas fa-server"></i></p>
        <h3>Hosting</h3>
        <p class="feature-body">Cloud web hosting hosting just for you from only £3.33 per month with a multitude of free features, including free SSL as standard. You cannot go wrong</p><br/>
        <p class="cta-button-dt"><a href="/store/shared-hosting">View Packages</a></p>
    </div>

    <div class="featured-page">
        <p class="feature-icon"><i class="fas fa-globe"></i></p>
        <h3>Domains</h3>
        <p class="feature-body">We are always happy to help you setup your new online home, our Domain registry service is quick and easy to use allowing you to find the perfect name for your brand new website. Where will your domain take you?</p>
        <p class="cta-button-dt"><a href="cart.php?a=add&domain=register">Find Yours</a></p>
    </div>

    <div class="featured-page">
        <p class="feature-icon"><i class="fab fa-weebly"></i></p>
        <h3>Websites</h3>
        <p class="feature-body">New to websites or are you an old hand? It really doesn’t matter with our drag and drop website builder - Weebly, everything you need to build up your very own unique website is just a drag and a click away.</p>
        <p class="cta-button-dt"><a href="store/website-builder">Start Building</a></p>
    </div>

    <div class="featured-page">
        <p class="feature-icon"><i class="fas fa-shield-alt"></i></p>
        <h3>Code Guard</h3>
        <p class="feature-body">Have peace of mind at all times with our Code Guard add on, ensuring your website is constantly backed up and protected against the most up to date malware.</p><br/>
        <p class="cta-button-dt"><a href="store/codeguard">Learn More</a></p>
    </div>
</div>

<!--CUSTOMER REVIEWS-->
    <div class="triple-container container">
        <h2>Why our customers love us</h2>
        <div class="review-item">
            <h3>May J.</h3>
            <p>Couldn't recommend Peter more, he's friendly, very professional and has a strong bank of knowledge. His
                always available to help and is prompt in resolving any issues. The hosting provided is great and
                constantly being updated to ensure that website runs at optimum speed.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
        </div>
        <div class="review-item">
            <h3>Abdul, Vertax Accountants</h3>
            <p>Peter is extremely supportive and is able to explain technical points quickly and clearly. He is very proactive and takes the time to learn and understand the needs of our business better, which is very reassuring and takes a weight off our shoulders.</p>
            <p>I have no hesitation in recommending Peter to others, he is brilliant!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
        </div>
        <div class="review-item">
            <h3>Jenny, Pretty Mamma</h3>
            <p>Peter has helped me set up a website at a very good and competitive price! Peter is very trustworthy and has a passion to help people create a website with lots of support from himself.I would highly recommend!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
        </div>
    </div>

<!--CUSTOMER VIDEO-->
    <div class="container">
        <div class="customer-video">
            <div class="left-text">
                <h3>Fantastic Customer Service</h3>
                <p>We pride ourselves on offering you the best customer service possible. Taking the time to get to know
                    you and how best we can help your business is what we do best here at Peter's Web!</p>
                <p>Getting responses like this is one of the many reasons we love what we do and strive even harder to
                    make your time with us a good one.</p>
            </div>
            <div class="right-video">
                <div class="video-back">
                    <div class="video">
                        <iframe src="https://player.vimeo.com/video/345224005?portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
                    </div>
                    <script src="https://player.vimeo.com/api/player.js"></script>
                </div>
            </div>
        </div>
    </div>

<!--BLOG POSTS-->
<div class="triple-container container">
    <h2>latest web hosting tips</h2>
    {foreach $LANG.blogs as $post}
        <div class="blog-item">
            <a href="/knowledgebase/{$post->id}/{str_replace(".","",str_replace([" ","?",":",";","#","/"],"-",$post->title))}.html">
                <img src="/assets/img/blogs/{$post->id}.jpg" alt="blog-image" class="cover-image"/>
                <h3>{$post->title}</h3>
                <div class="intro-dt" style="height: 60px; display: block; overflow: hidden;">{$post->article}</div>
            </a>
        </div>
    {/foreach}
</div>
