<?php /* Template Name: services */
set_query_var('ENTRY', 'servicios');
get_header();
$id = get_the_ID();
?>
<section class="about-h">
	<div class="x-container">
		<div class="breadcrumb">
			<ul>
				<li><a href="<?php echo site_url(); ?>">Home</a></li>
				<li><i class="separator"></i></li>
				<li class="hyper">Servicios</li>
				<li><i class="separator"></i></li>
				<li><?php the_title(); ?></li>
			</ul>
		</div>
		<div class="x-flex">
			<div class="left">
				<div class="title-p">
					<h1><?php the_title(); ?></h1>
					<p><?php the_field('resumen'); ?></p>
				</div>
			</div>
			<div class="right">
				<img src="<?php echo the_post_thumbnail_url($id); ?>">
			</div>
		</div>
		<img src="<?php the_field('background'); ?>" class="background">
	</div>
</section>
<section class="why">
	<div class="x-container">
		<div class="why-title">
			<h2><?php the_field('title_staff');?></h2>
		</div>
		<div class="carousel-why">
			<div class="why-flex">
			<?php					 
				$casos = get_field('why');
	        	if (!empty($casos)){
	        		foreach ($casos as $caso) {
	        			?>		        
				        <div class="why-item">
				        	<div class="why_imagen">
								<img src="<?php echo $caso['imagen']; ?>">
							</div>
							<div class="why_title">
								<h2><?php echo $caso['title']; ?></h2>
							</div>
							<div class="why_desc">
								<?php echo $caso['description']; ?>
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
<section class="banner-promotional">
	<div class="x-container">
		<div class="x-flex">
			<div class="left">
				<h2><?php the_field('title_promotional');?></h2>
			</div>
			<div class="right">
				<ul class="icon_promotional">
				<?php
		        	$promotional = get_field('promotional');
		        	if (!empty($promotional)){
		        		foreach ($promotional as $p) {
		        			?>		        
					        <li class="promotional-item">
					        	<img src="<?php echo $p['imagen'];?>">
						        <h3><?php echo $p['title'];?></h3>
					        </li>
		        			<?php
		        		}
		        	}
		        ?>
		        </ul>
			</div>
		</div>
	</div>
</section>
<section class="instalaciones-c">
	<div class="x-container">
		<div class="title-services">
			<h2><?php the_field('title_accion');?></h2>
		</div>
		<div class="carousel-instalaciones">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<?php				 
						$casos = get_field('instalaciones');
			        	if (!empty($casos)){
			        		foreach ($casos as $caso) {
			        			?>		        
						        <div class="swiper-slide">
						        	<div class="instalaciones_item">
										<?php
											if ($caso['video']) {
												?>
												<div class="imagen_vv video_spec">
													<img src="<?php echo $caso['imagen']; ?>" class="video-modal modalOpen">
													<div class="mymodal">
														<div class="mymodal-content">
															<div class="mymodal_close"></div>
															<div class="mymodal-descp">
																<?php echo $caso['videoiframe']; ?>
															</div>
														</div>
													</div>
												</div>
												<?php
											} else {
												?>
												<div class="imagen_vv">
													<img src="<?php echo $caso['imagen']; ?>" class="">
												</div>
												<?php
											}
										?>								
									</div>
						        </div>
			        			<?php
			        		}
			        	}
			        ?>
			    </div>
				<div class="swiper-button-prev"></div>
			    <div class="swiper-button-next"></div>
			</div>
		</div>
	</div>
</section>
<section class="fa-faq">
	<div class="x-container">
		<div class="carousel-casos">
			<div class="x-flex">
				<div class="left">
					<div class="title-faq">
						<h2><?php the_field('title_faq');?></h2>
						<p class="bajada"><?php the_field('subtitle_faq');?></p>
					</div>
					<div class="accordeon-rr">
						<?php
							$accordeon = get_field('accordeon');
							foreach ($accordeon as $ac) {
								?>
							<div class="accordeon_header">
								<?php echo $ac['title']; ?>
							</div>
							<div class="accordeon_body">
								<?php echo $ac['body']; ?>
							</div>
								<?php
							}
						?>
					</div>
				</div>
				<div class="right">
					<img src="<?php the_field('imagen_faq'); ?>">
				</div>
			</div>
		</div>
	</div>
</section>
<?php get_footer(); ?>