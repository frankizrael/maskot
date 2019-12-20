<?php 
set_query_var('ENTRY', 'casos');
get_header();
$id = get_the_ID();
?>
<section class="single-casos-s">
	<div class="x-container">
		<div class="breadcrumb">
			<ul>
				<li><a href="<?php echo site_url(); ?>">Home</a></li>
				<li><i class="separator"></i></li>
				<li><a href="<?php echo site_url(); ?>/casos">Casos de éxito</a></li>
				<li><i class="separator"></i></li>
				<li><?php the_title(); ?></li>
			</ul>
		</div>
		<div class="title-index">
			<h1><?php the_title(); ?></h1>
			<p class="bajada"><?php the_field('resumen'); ?></p>
		</div>
		<div class="content-casos">
			<?php
	        	$args = array(
				  'numberposts' => -1,
				  'post_type'   => 'casos'
				);						 
				$casos = get_posts( $args );
	        	if (!empty($casos)){
	        		foreach ($casos as $caso) {
	        			?>		        
			        	<div class="caso_item">
							<div class="caso_box">
								<div class="caso_imagen">
									<img src="<?php echo the_post_thumbnail_url($caso->ID); ?>">
								</div>
								<div class="caso_title">
									<h2><?php echo get_title($caso->ID); ?></h2>
									<div class="bajada">
										<?php echo get_field('date',$caso->ID); ?>
									</div>
								</div>
								<div class="caso_content">
									<div class="content_top">
										<?php echo get_field('tag',$caso->ID); ?>
									</div>
									<div class="content_descp">
										<?php echo get_field('resumen',$caso->ID); ?>
									</div>
									<div class="link">
										<a href="<?php echo get_permalink($caso->ID); ?>" class="btn">Ver caso</a>
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
</section>
<?php get_footer(); ?>
