                    </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-md-none col-md-3 sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                <div class="clearfix"></div>
            </div>
        </div>
    </section>

    <footer id="footer" class="footer">
        <div class="container">    
				<!-- TrustBox widget - Micro Review Count --> <div class="trustpilot-widget" data-locale="en-GB" data-template-id="5419b6a8b0d04a076446a9ad" data-businessunit-id="5b9028cb1ed1310001be6ec8" data-style-height="24px" data-style-width="100%" data-theme="dark"> <a href="https://uk.trustpilot.com/review/www.petersweb.me.uk" target="_blank" rel="noopener">Trustpilot</a> </div> <!-- End TrustBox widget -->
    <div class="container">
        <div class="footer-container">
            <h3>Account</h3>
            <p><a href="{$WEB_ROOT}/clientarea.php">My Account</a></p>
            <p><a href="{$WEB_ROOT}/register.php">Create Account</a></p>
	    <p><a href="{$WEB_ROOT}/pwreset.php">Forgot Your Password</a></p>
            <p><a href="{$WEB_ROOT}/knowledgebase">Help and Support</a></p>
            <p><a href="{$WEB_ROOT}/contact.php">Contact Us</a></p>
        </div>
        <div class="footer-container">
            <h3>Navigate</h3>
            <p><a href="{$WEB_ROOT}/cart.php?gid=1">Hosting</a></p>
            <p><a href="{$WEB_ROOT}/cart.php?a=add&domain=register">Domains</a></p>
            <p><a href="{$WEB_ROOT}/store/website-builder">Websites</a></p>
            <p><a href="{$WEB_ROOT}/store/codeguard">Code Guard</a></p>
        </div>
        <div class="footer-container">
            <h3>Policies</h3>
            <p><a href="{$WEB_ROOT}/policies/PrivacyPolicyFinal.pdf">Privacy Policy</a></p>
            <p><a href="{$WEB_ROOT}/policies/Terms_and_Conditions.pdf">Terms and Conditions</a></p>
            <p><a href="{$WEB_ROOT}/policies/Refund_Policy.pdf">Refunds and Payments</a></p>
            <p><a href="{$WEB_ROOT}/policies/Startup_Hosting_Policy.pdf">Startup Hosting</a></p>
            <p><a href="{$WEB_ROOT}/policies/Charity_Hosting_Policy.pdf">Charity Hosting</a></p>  
        </div>
    </div>
                {include file="$template/includes/social-accounts.tpl"}

              

            <p class="copyright mb-0">
                {lang key="copyrightFooterNotice" year=$date_year company=$companyname}
            </p>
        </div>
    </footer>

    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>

    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">{lang key='close'}</span>
                    </button>
                </div>
                <div class="modal-body">
                    {lang key='loading'}
                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        {lang key='loading'}
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key='close'}
                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        {lang key='submit'}
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                        {if $languagechangeenabled && count($locales) > 1}
                            <h5 class="h5 pt-5 pb-3">{lang key='chooselanguage'}</h5>
                            <div class="row item-selector">
                            <input type="hidden" name="language" value="">
                                {foreach $locales as $locale}
                                    <div class="col-4">
                                        <a href="#" class="item{if $language == $locale.language} active{/if}" data-value="{$locale.language}">
                                            {$locale.localisedName}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                        {if !$loggedin && $currencies}
                            <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                            <div class="row item-selector">
                                <input type="hidden" name="currency" value="">
                                {foreach $currencies as $selectCurrency}
                                    <div class="col-4">
                                        <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default">{lang key='apply'}</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    {if !$loggedin && $adminLoggedIn}
        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
            <i class="fas fa-redo-alt"></i>
            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
        </a>
    {/if}

    {include file="$template/includes/generate-password.tpl"}

    {$footeroutput}

</body>
</html>
