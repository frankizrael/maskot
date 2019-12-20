<?php 
set_query_var('ENTRY', 'noticias');
get_header();
$id = get_the_ID();
?>
<section class="single-s">
	<div class="x-container">
		<div class="top-title-single">
			<div class="breadcrumb">
				<ul>
					<li><a href="<?php echo site_url(); ?>">Home</a></li>
					<li><i class="separator"></i></li>
					<li><a href="<?php echo site_url(); ?>/noticias">Noticias</a></li>
					<li><i class="separator"></i></li>
					<li><?php the_title(); ?></li>
				</ul>
			</div>
			<div class="single-title-index">
				<h1><?php the_title(); ?></h1>
				<p class="bajada"><?php the_field('date'); ?></p>
			</div>
			<img src="<?php echo the_post_thumbnail_url(); ?>" class="absolute-single">
		</div>
		<div class="content-single-not">
			<?php
				the_content();
			?>
		</div>
	</div>
</section>
<?php get_footer(); ?>
