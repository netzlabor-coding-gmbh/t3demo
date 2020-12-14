<?php
defined('TYPO3_MODE') || die('Access denied.');

call_user_func(
    function()
    {

        \FluidTYPO3\Flux\Core::registerProviderExtensionKey('CO.DemoSitepackage', 'Page');
        \FluidTYPO3\Flux\Core::registerProviderExtensionKey('CO.DemoSitepackage', 'Content');

        \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile('demo_sitepackage', 'Configuration/TypoScript', 'Demo Sitepackage');

    }
);