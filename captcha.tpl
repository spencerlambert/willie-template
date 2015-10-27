<script type="text/javascript">
	/*
	* reCaptcha Settings
	*/
	var RecaptchaOptions = 
		{
			theme : 'custom',
			custom_theme_widget : 'recaptcha_widget',
			custom_translations : 
				{
					instructions_visual : "{$lang.accountInfoError3}:",
					instructions_audio : "{$lang.captchaAudio}:",
					play_again : "{$lang.captchaPlayAgain}",
					cant_hear_this : "{$lang.captchaDownloadMP3}",
					visual_challenge : "",
					audio_challenge : "",
					refresh_btn : "",
					help_btn : "",
					incorrect_try_again : "{$lang.captchaIncorrect}"
				}
		};
</script>
<div id="recaptcha_widget" style="display:none">
	<div id="recaptcha_image"></div>
	<div class="recaptcha_only_if_incorrect_sol" style="color:red">{$lang.captchaIncorrect}</div>
	<div>
		<div class="recaptcha_only_if_image"><!--Enter the words above:--></div>
		<div class="recaptcha_only_if_audio">{$lang.captchaAudio}:</div>
		<input type="text" id="recaptcha_response_field" name="recaptcha_response_field" require="require" errorMessage="{$lang.accountInfoError3}" errorMessage2="{$lang.accountInfoError4}" class="form-control">
	</div>
	<div class="captchaTools">
		<div><a href="javascript:Recaptcha.reload()"><img src="{$imgPath}/captcha.refresh.png"></a></div>
		<div class="recaptcha_only_if_image"><a href="javascript:Recaptcha.switch_type('audio')"><img src="{$imgPath}/captcha.audio.png"></a></div>
		<div class="recaptcha_only_if_audio"><a href="javascript:Recaptcha.switch_type('image')"><img src="{$imgPath}/captcha.image.png"></a></div>
		<div><a href="javascript:Recaptcha.showhelp()"><img src="{$imgPath}/captcha.help.png"></a></div>
		<div class="captchaPoweredBy">{$lang.poweredBy} <a href="http://www.google.com/recaptcha" target="_blank">reCaptcha</a></div>
	</div>
</div>
<script type="text/javascript" src="http://www.google.com/recaptcha/api/challenge?k={$config.captcha.publickey}"></script>
<noscript>
	<iframe src="http://www.google.com/recaptcha/api/noscript?k={$config.captcha.publickey}" height="300" width="500" frameborder="0"></iframe><br>
	<textarea name="recaptcha_challenge_field" rows="3" cols="40"></textarea>
	<input type="hidden" name="recaptcha_response_field" value="manual_challenge">
</noscript>
 