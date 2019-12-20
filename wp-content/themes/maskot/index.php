<?php 
set_query_var('ENTRY', 'noticias');
get_header();
$id = get_the_ID();
?>
<section class="index-s">
	<div class="x-container">
		<div class="breadcrumb">
			<ul>
				<li><a href="<?php echo site_url(); ?>">Home</a></li>
				<li><i class="separator"></i></li>
				<li>Noticias</li>
			</ul>
		</div>
		<div class="title-index">
			<h1><?php the_title(); ?></h1>
			<p class="bajada"><?php the_field('resumen'); ?></p>
		</div>
		<div class="content-noticias">
			<div class="blog-flex">
			<?php
	        	$args = array(
				  'numberposts' => -1,
				  'post_type'   => 'posts'
				);						 
				$casos = get_posts( $args );
	        	if (!empty($casos)){
	        		foreach ($casos as $caso) {
	        			?>		        
				        <div class="blog-item">
				        	<div class="blog_box">
								<div class="blog_imagen">
									<img src="<?php echo the_post_thumbnail_url($caso->ID); ?>">
								</div>
								<div class="blog_title">
									<h2><?php echo get_title($caso->ID); ?></h2>
									<div class="bajada">
										<?php echo get_field('date',$caso->ID); ?>
									</div>
									<div class="link">
										<a href="<?php echo get_permalink($caso->ID); ?>" class="btn">Leer noticia</a>
									</div>
								</div>
							</div>
				        </div>
	        			<?php
	        		}
	        	}
	        ?>
	    	</div>		
		</div>
	</div>
</section>
<?php get_footer(); ?>
