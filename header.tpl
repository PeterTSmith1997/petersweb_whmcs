<!DOCTYPE html>
<html lang="en">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script src="https://zstdhw4jjfsq.statuspage.io/embed/script.js"></script>
    <link rel="dns-prefetch" href="//fonts.googleapis.com">
    <link rel="dns-prefetch" href="//uk.trustpilot.com">
    <link rel="dns-prefetch" href="//widget.trustpilot.com">
    <link rel="dns-prefetch" href="//google.com">
    <link rel="dns-prefetch" href="//fonts.gstatic">
   {if $pagetitle eq 'Portal Home'}
    {assign var='realpagetitle' value='The home of web hosting'}
    <meta name="description" content="Peters Web is the home of reliable, customer-focused cloud web hosting. We are experts in providing web hosting to small to medium-sized clients that work for there needs.">
    {else}
    {assign var='realpagetitle' value=$pagetitle}
    {/if}
    <meta name=”robots” content="index, follow">
    <meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:label1" value="Written by">
	<meta name="twitter:data1" value="Peters Web">
	
	<meta property="og:locale" content="en_GB" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="The home of web hosting" />
	<meta property="og:description" content="Peters Web is the home of reliable, customer-focused cloud web hosting. We are experts in providing web hosting to small to medium-sized clients that work for there needs." />
	<meta property="og:url" content="https://www.petersweb.me.uk/" />
	<meta property="og:site_name" content="Peters Web" />
	

    <link rel="apple-touch-icon" sizes="180x180" href="https://www.petersweb.me.uk/images/icons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="https://www.petersweb.me.uk/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="https://www.petersweb.me.uk/images/icons/favicon-16x16.png">
    <link rel="manifest" href="https://www.petersweb.me.uk/images/icons/site.webmanifest">  
    <link rel="mask-icon" href="https://www.petersweb.me.uk/images/icons/safari-pinned-tab.svg" color="#5bbad5">
    <link rel="shortcut icon" href="https://www.petersweb.me.uk/images/icons/favicon.ico">
    <meta name="msapplication-TileColor" content="#2b5797">
    <meta name="msapplication-config" content="https://www.petersweb.me.uk/images/icons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- TrustBox script --> <script type="text/javascript" src="//widget.trustpilot.com/bootstrap/v5/tp.widget.bootstrap.min.js" async></script> <!-- End TrustBox script -->
    
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$realpagetitle} - {$companyname}</title>
    


    {include file="$template/includes/head.tpl"}


    {$headoutput}

</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}">

{$headeroutput}


    <header id="header" class="header">
        {if $loggedin}
            <div class="topbar">
                <div class="container">
                    <div class="d-flex">
                        <div class="mr-auto">
                            <button type="button" class="btn" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                                <i class="far fa-flag"></i>
                                {if count($clientAlerts) > 0}
                                    {count($clientAlerts)}
                                    <span class="d-none d-sm-inline">Notifications</span>
                                {else}
                                    <span class="d-sm-none">0</span>
                                    <span class="d-none d-sm-inline">{lang key='nonotifications'}</span>
                                {/if}
                            </button>
                            <div id="accountNotificationsContent" class="w-hidden">
                                <ul class="client-alerts">
                                {foreach $clientAlerts as $alert}
                                    <li>
                                        <a href="{$alert->getLink()}">
                                            <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                            <div class="message">{$alert->getMessage()}</div>
                                        </a>
                                    </li>
                                {foreachelse}
                                    <li class="none">
                                        {lang key='notificationsnone'}
                                    </li>
                                {/foreach}
                                </ul>
                            </div>
                        </div>

                        <div class="ml-auto">
                            <div class="input-group active-client" role="group">
                                <div class="input-group-prepend d-none d-md-inline">
                                    <span class="input-group-text">Logged in as:</span>
                                </div>
                                <div class="btn-group">
                                    <a href="{$WEB_ROOT}/clientarea.php?action=details" class="btn btn-active-client">
                                        <span>
                                            {if $client.companyname}
                                                {$client.companyname}
                                            {else}
                                                {$client.fullName}
                                            {/if}
                                        </span>
                                    </a>
                                    <a href="{routePath('user-accounts')}" class="btn" data-toggle="tooltip" data-placement="bottom" title="Switch Account">
                                        <i class="fad fa-random"></i>
                                    </a>
                                    {if $adminMasqueradingAsClient || $adminLoggedIn}
                                        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
                                            <i class="fas fa-redo-alt"></i>
                                            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
                                        </a>
                                    {/if}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        {/if}

        <div class="navbar navbar-light">
            <div class="container">
                <a class="navbar-brand mr-3" href="{$WEB_ROOT}/index.php">
                    {if $assetLogoPath}
                        <img src="{$assetLogoPath}" alt="{$companyname}" class="logo-img">
                    {else}
                        {$companyname}
                    {/if}
                </a>

                <form method="post" action="{routePath('knowledgebase-search')}" class="form-inline ml-auto">
                    <div class="input-group search d-none d-xl-flex">
                        <div class="input-group-prepend">
                            <button class="btn btn-default" type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                        <input class="form-control appended-form-control font-weight-light" type="text" name="search" placeholder="{lang key="searchOurKnowledgebase"}...">
                    </div>
                </form>

                <ul class="navbar-nav toolbar">
                    <li class="nav-item ml-3">
                        <a class="btn nav-link cart-btn" href="cart.php?a=view">
                            <i class="far fa-shopping-cart"></i>
                            <span class="badge badge-info">{$cartitemcount}</span>
                            <span class="sr-only">{lang key="carttitle"}</span>
                        </a>
                    </li>
                    <li class="nav-item ml-3 d-xl-none">
                        <button class="btn nav-link" type="button" data-toggle="collapse" data-target="#mainNavbar">
                            <span class="fas fa-bars"></span>
                        </button>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navbar navbar-expand-xl main-navbar-wrapper">
            <div class="container">
                <div class="collapse navbar-collapse" id="mainNavbar">
                    <form method="post" action="{routePath('knowledgebase-search')}" class="d-xl-none">
                        <div class="input-group search w-100 mb-2">
                            <div class="input-group-prepend">
                                <button class="btn btn-default" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                            <input class="form-control prepended-form-control" type="text" name="search" placeholder="{lang key="searchOurKnowledgebase"}...">
                        </div>
                    </form>
                    <ul class="navbar-nav mr-auto">
                        {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}
                    </ul>
                </div>
            </div>
        </div>
    </header>

    {include file="$template/includes/network-issues-notifications.tpl"}
{*
    <nav class="master-breadcrumb" aria-label="breadcrumb">
        <div class="container">
            {include file="$template/includes/breadcrumb.tpl"}
        </div>
    </nav>
*}
    {include file="$template/includes/verifyemail.tpl"}

</section>

{if $templatefile == 'homepage'}
    {*TURNER DESIGN HERO BAR*}
    <div class="hero">
        <div class="pin-center">
            <h2>Just a few clicks away from, your websites perfect home</h2>
            <form method="post" action="domainchecker.php" class="search-form-dt" id="frmDomainHomepage">
                <div class="search-dt">
                    <input type="text" name="domain" class="search-input-dt" placeholder="www.your-website.com" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}" />
                    {if $registerdomainenabled}
                        <input type="submit" value="{$LANG.search}" class="search-button-dt search{$captcha->getButtonClass($captchaForm)}"/>
                    {/if}
                </div>
                {include file="$template/includes/captcha.tpl"}
                <style>
                    .g-recaptcha{
                        display: none !important;
                    }
                </style>
            </form>
        </div>
        <img src="/assets/img/Clouds.PNG" alt="cover-img"/>
    </div>

    <div class="more-info">
        <div class="find-out-more container">
            <h1>Welcome to the home of your next website</h1>
            <h2>We offer spectacular hosting at a competitive price with outstanding customer service</h2>
            <p class="cta-button-dt"><a href="about.php">Find Out More</a></p>
        </div>
    </div>
{/if}

{if $templatefile == 'about'}
    <div class="header-cover">
        <img src="/assets/img/server.png"/>
        <div class="pin-center">
            <h1>About Us</h1>
        </div>
    </div>
    <div class="container about-text">
        <h2>Welcome to Peters Web</h2>
        <div class="profile">
            <img src="/assets/img/profile.jpg" alt="peter" class="profile-image"/>
            <div class="title">
                <h3>Peter Smith</h3>
                <h3>Web Hosting Extraordinaire</h3>
            </div>
        </div>
        <p> I am a young UK based web programmer with over 10 years of experience helping small web based businesses achieve their full potential across the World Wide Web.</p>
        <p>Over the course of the last decade, whilst working alongside online businesses and developing my own skills, I was struck by the number of web hosting and domain services that seemed to lack a certain ‘personality’ and connection to their clients. I thought it a shame that I was potentially just another profit source for a big hosting company and if I was to purchase a service from the company in question I wouldn’t feel as supported as I should. I resolved to set up a hosting and domain service that would involve and support each client at every step of the way during their web hosting journey…..I like to think of Peters Web as not just my own corner of the web but a corner for all of us, my clients and myself!</p>
    </div>

    <div class="full-container main-usp">
        <h2>We believe in doing things differently</h2>
        <div class="container-fluid">
            <div class="cta-3">
                <p class="icon"><i class="fas fa-tape"></i></p>
                <p class="info">Tailored packages for every client from bloggers through to commercial ventures</p>
            </div>
            <div class="cta-3">
                <p class="icon"><i class="fas fa-user-clock"></i></p>
                <p class="info">Exceptional customer focused service as standard with all packages</p>
            </div>
            <div class="cta-3">
                <p class="icon"><i class="far fa-check-circle"></i></p>
                <p class="info">99% Guaranteed network uptime</p>
            </div>
        </div>
        <p class="cta-button-dt"><a href="{$WEB_ROOT}/cart.php?gid=1">BROWSE PACKAGES</a></p>
    </div>

    <div class="image-text">
        <div class="container-fluid">
            <div class="overText">
                <h2>We are a company with FOCUS</h2>
                <p>The focus of Peters Web will always be to provide the best in web hosting and domain services, with every package being tailored to each client depending on their own needs coupled with a personal support service. As we are a team of programmers and website developers we are always working on our own skills and constantly reviewing our creative approaches. We endeavour to use these new skills to further develop and improve how we work here at Peters Web.</p>
            </div>
        </div>
    </div>

    <div class="container-fluid main-usp stats">
        <h2>We have experience</h2>
        <div class="container-fluid">
            <div class="cta-3">
                <p class="figure"><span class="count">{$LANG.host->total}</span></p>
                <p class="info">Sites Hosted</p>
            </div>
            <div class="cta-3">
                <p class="figure"><span class="count">{$LANG.customers->total}</span></p>
                <p class="info">Clients Helped</p>
            </div>
            <div class="cta-3">
                <p class="figure"><span class="count">{$LANG.blogCount->total}</span></p>
                <p class="info">Insights Published</p>
            </div>
		</div>
		<h2>See inside our servers</h2>
		<div class="container">
            <div class="cta-3">
                <p class="figure"><span class="count">{$LANG.dataStored->data}</span></p>
                <p class="info">Storage in use</p>
            </div>
            <div class="cta-3">
                <p class="figure"><span class="count">{$LANG.bwUsed->data}</span></p>
                <p class="info">Bandwidth used this month</p>
            </div>
			
            <div class="cta-3">
                <p class="figure"><span class="count">{$LANG.servers->total}</span></p>
                <p class="info">Servers in use</p>
            </div>
        </div>
    </div>

    <div class="container about-text">
        <h2>Our Network</h2>
        <p>We have spent a number of years building up the best network we can for our clients, as well as sourcing our servers from a trusted provider who firmly fits in with our ethos. Our network also includes the most up to date SSD storage technology by Raid 10 to ensure lightning fast loading times. We also include DDoS protection with all of the packages we provide to our clients, this feature protects against any DDoS style attack occurring on our servers. We use LiteSpeed web servers alongside CloudLinux to ensure your website is lightning fast, both in terms of loading speed and its day to day running. In addition to SSD, our servers run Litespeed; this combinded with the SSD can make your website load up to 20x faster.</p>
        <p>Above all else we provide a service to our clients that we would choose to use ourselves. We feel there are many other web host providers out there who don't seem to make the client the centre of their interests....here at Peters Web you will find the package that is best for you, no extras, just what you need - that is our commitment!</p>
    </div>

    <script>
        $(window).scroll(function(){
            // This is then function used to detect if the element is scrolled into view
            function elementScrolled(elem)
            {
                var docViewTop = $(window).scrollTop();
                var docViewBottom = docViewTop + $(window).height();
                var elemTop = $(elem).offset().top;
                return ((elemTop <= docViewBottom) && (elemTop >= docViewTop));
            }

            // This is where we use the function to detect if ".box2" is scrolled into view, and when it is add the class ".animated" to the <p> child element
            if(elementScrolled('.stats')) {
                // Your function here
                $("div").removeClass("stats");
                $('.count').each(function () {
                    $(this).prop('Counter',0).animate({
                        Counter: $(this).text()
                    }, {
                        duration: 2000,
                        easing: 'swing',
                        step: function (now) {
                            $(this).text(Math.ceil(now));
                        }
                    });
                });
            }
        });
    </script>
{/if}

{include file="$template/includes/verifyemail.tpl"}

{if $templatefile != 'about'}

    <section id="main-body">
        <div class="{if !$skipMainBodyContainer}container{/if}">
            <div class="row">

            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                <div class="col-lg-4 col-xl-3">
                    <div class="sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-none d-lg-block sidebar">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                </div>
            {/if}
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">
{/if}