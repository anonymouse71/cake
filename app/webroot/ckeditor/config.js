/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

    // var PATHURL = 'http://lms.app/ckeditor/kcfinder';
    var PATHURL = 'http://bou5.bpopower.com/ckeditor/kcfinder';

    config.filebrowserBrowseUrl = PATHURL+'/browse.php?type=files';
    config.filebrowserImageBrowseUrl = PATHURL+'/browse.php?type=images';
    config.filebrowserFlashBrowseUrl = PATHURL+'/browse.php?type=flash';
    config.filebrowserUploadUrl = PATHURL+'/upload.php?type=files';
    config.filebrowserImageUploadUrl = PATHURL+'/upload.php?type=images';
    config.filebrowserFlashUploadUrl = PATHURL+'/upload.php?type=flash';
    config.filebrowserVideoBrowseUrl = PATHURL+'/browse.php?type=files';
    config.filebrowserVideoUploadUrl = PATHURL+'/browse.php?type=files';
    
    config.extraPlugins = 'video';
};
