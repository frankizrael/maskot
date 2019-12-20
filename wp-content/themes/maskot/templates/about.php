<?php /* Template Name: about */
set_query_var('ENTRY', 'aboutt');
get_header();
$id = get_the_ID();
?>
<section class="about-h">
	<div class="x-container">
		<div class="breadcrumb">
			<ul>
				<li><a href="<?php echo site_url(); ?>">Home</a></li>
				<li><i class="separator"></i></li>
				<li>Nosotros</li>
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
	</div>
</section>
<section class="staff">
	<div class="x-container">
		<div class="simple-title-services">
			<h2><?php the_field('title_staff');?></h2>
		</div>
		<div class="carousel-title_staff">
			<div class="staff-flex">
			<?php					 
				$casos = get_field('staff');
	        	if (!empty($casos)){
	        		foreach ($casos as $caso) {
	        			?>		        
				        <div class="staff-item">
				        	<div class="staff_box">
								<div class="staff_imagen">
									<img src="<?php echo $caso['imagen']; ?>">
								</div>
								<div class="staff_title">
									<h2><?php echo $caso['title']; ?></h2>
									<div class="bajada">
										<?php echo $caso['cargo']; ?>
									</div>
								</div>
								<div class="staff_desc">
									<?php echo $caso['description']; ?>
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
<section class="acreditaciones-section">
	<div class="x-container">
		<div class="title-services">
			<h2><?php the_field('title_acreditaciones','options');?></h2>
		</div>
		<div class="list-acreditaciones">
			<?php
	        	$acreditaciones = get_field('acreditaciones','options');
	        	if (!empty($acreditaciones)){
	        		foreach ($acreditaciones as $acreditacion) {
	        			?>		        
				        <li class="promotional-item">
				        	<div class="list-img">
				        		<?php if(!empty($acreditacion['imagen'])) { ?>
						        	<img src="<?php echo $acreditacion['imagen'];?>" class="icon">
						        <?php } ?>
						        <?php if(!empty($acreditacion['flag'])) { ?>
						        	<img src="<?php echo $acreditacion['flag'];?>" class="icon">
						        <?php } ?>
					        </div>
					        <h3><?php echo $acreditacion['title'];?></h3>
					        <p><?php echo $acreditacion['subtitle'];?></p>
				        </li>
	        			<?php
	        		}
	        	}
	        ?>
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
			<h2><?php the_field('title_casos');?></h2>
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
<section class="banner-testimonial">
	<div class="x-container">
		<div class="title-services">
			<h2><?php the_field('title_testimoniales');?></h2>
		</div>
		<div class="carousel-instalaciones">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<?php				 
						$casos = get_field('testimoniales');
			        	if (!empty($casos)){
			        		foreach ($casos as $caso) {
			        			?>		        
						        <div class="swiper-slide">
						        	<div class="testimoniales_item">
										<div class="x-flex">
											<div class="left">
												<div class="content-testimonial">
													<div class="descp">
														<?php echo $caso['content']; ?>	
													</div>
													<div class="autor">
														<?php echo $caso['autor']; ?>
													</div>													
												</div>
											</div>
											<div class="right">
												<img src="<?php echo $caso['imagen']; ?>">
											</div>
										</div>							
									</div>
						        </div>
			        			<?php
			        		}
			        	}
			        ?>
			    </div>
			    <div class="swiper-pagination"></div>
			</div>
		</div>
	</div>
</section>
<?php get_footer();