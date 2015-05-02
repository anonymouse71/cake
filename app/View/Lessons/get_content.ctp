<?php if (isset($firstContent)) { ?>
	<div class="lesson-title">
		<h4 class="blog-title"><?php echo isset($firstContent['Content']['name'])? $firstContent['Content']['name'] : 'No title found!'; ?></h4>
		<div class="blog-short-content">
			<?php echo isset($firstContent['Content']['data'])? $firstContent['Content']['data'] : 'No contents'; ?>
		</div>
	</div>
<?php } ?>