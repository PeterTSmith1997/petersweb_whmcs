{*{if $sent}*}
    {*{include file="$template/includes/alert.tpl" type="success" msg=$LANG.contactsent textcenter=true}*}
{*{/if}*}

{*{if $errormessage}*}
    {*{include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}*}
{*{/if}*}

{*{if !$sent}*}
{*<h1>About us</h1>*}
{*<p>Peters Web is the brain child of Peter Smith, a young UK based web programmer with over 10 years of experience helping small web based businesses achieve their full potential across the World Wide Web.</p>*}
{*<p>Over the course of the last decade, whilst working alongside online businesses and developing my own skills, I was struck by how a lot of web hosting and domain services I came across seemed to lack a certain ‘personality’ and connection to their clients. I thought it a shame that I was potentially just another profit source for a big hosting company and that if I was to purchase a service from said company I wouldn’t feel as supported as I should. I resolved to setup a hosting and domain site that would involve and support each client at every step of the way during their web hosting journey…..I like to think of Peters Web as not just my own corner of the web but a corner for all of us, my clients and myself! </p>*}
{*<p>The focus of Peters Web will always be to provide the best in web hosting and domains services, with each package being tailored to each client depending on their own needs coupled with a one to one support service where I offer personal support and advice. As a programmer and website developer I am always working on my own skills and approaches and endeavour to use these new skills to constantly improve how we work and develop further here at Peters Web.*}
{*I look forward to starting our web hosting journey together soon….!</p>*}

{*<h2>Lets get social</h2>*}
{*<p>Follw us on <a href="https://www.facebook.com/petersweb2018">Facebook</a>, <a href="https://twitter.com/petersweb2018">Twitter</a> and <a href="https://www.instagram.com/petersweb2018/">Instagram</a></p>*}
{*<p>Peter</p> *}
{*{/if}*}
