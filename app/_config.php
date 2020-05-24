<?php
use SilverStripe\View\SSViewer;
use SilverStripe\View\Parsers\ShortcodeParser;
 SSViewer::set_theme("nemos");



ShortcodeParser::get('default')->register('googlemap', function($arguments, $address, $parser, $shortcode) {
    $iframeUrl = sprintf(
        'http://maps.google.com/maps?q=%s&amp;hnear=%s&amp;ie=UTF8&hq=&amp;t=m&amp;z=14&amp;output=embed',
        urlencode($address),
        urlencode($address)
    );

    $width = (isset($arguments['width']) && $arguments['width']) ? $arguments['width'] : 1000;
    $height = (isset($arguments['height']) && $arguments['height']) ? $arguments['height'] : 300;

    return sprintf(
        '<iframe width="%d" height="%d" src="%s" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>',
        $width,
        $height,
        $iframeUrl
    );
});



