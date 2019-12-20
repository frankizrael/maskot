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
		<div class="x-flex">
			<div class="left">
				<img src="<?php echo the_post_thumbnail_url(); ?>">
			</div>
			<div class="right">
				<div class="title-casos-s">
					<p class="tag">Casos de Éxito</p>
					<h1><?php the_title(); ?></h1>
					<p class="bajada"><?php the_field('date'); ?></p>
				</div>
				<div class="title-casos-s">
					<p class="tag"><?php echo get_field('tag'); ?></p>
					<div class="descp">
						<?php echo get_field('resumen'); ?>
					</div>
					<div class="link">
						<a href="#video" class="btn modalOpen">Ver intro</a>
					</div>
				</div>
			</div>
			<div class="mymodal" id="video">
				<div class="mymodal-content">
					<div class="mymodal_close"></div>
					<div class="mymodal-descp">
						<?php the_field('iframe_video');?>
					</div>
				</div>
			</div>
		</div>	
		<div class="xs-container">
			<div class="x-flex">
				<div class="left">
					<div class="box">
						<div class="title-p">
							<h2><?php the_field('antes_title');?></h2>
						</div>
						<div class="content-p">
							<?php the_field('antes_content');?>
							<span class="leermas" data="Leer menos">Leer más</span>
						</div>
						<div class="list-iframe">
							<?php				 
								$casos = get_field('antes_imagenes');
					        	if (!empty($casos)){
					        		foreach ($casos as $caso) {
					        			?>	
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
					        			<?php
					        		}
					        	}
					        ?>
						</div>
					</div>
				</div>
				<div class="right">
					<div class="content-lines">
						<span class="lines"></span>
						<span class="timer">
							<?php the_field('time_adiestramiento');?>
						</span>
					</div>
					<div class="box">
						<div class="title-p">
							<h2><?php the_field('despues_title');?></h2>
						</div>
						<div class="content-p">
							<?php the_field('despues_content');?>
							<span class="leermas" data="Leer menos">Leer más</span>
						</div>
						<div class="list-iframe">
							<?php				 
								$casos = get_field('despues_imagenes');
					        	if (!empty($casos)){
					        		foreach ($casos as $caso) {
					        			?>	
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
					        			<?php
					        		}
					        	}
					        ?>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
</section>
<section class="casos-exito-related">
	<div class="x-container">
		<div class="title-related">
			<h2><?php the_field('title_casos');?></h2>
		</div>
		<div class="carousel-casos">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<?php
			        	$args = array(
						  'numberposts' => 6,
						  'post_type'   => 'casos',
						  'post__in'  => $id
						);						 
						$casos = new WP_Query( $args );
			        	if (!empty($casos)){
			        		foreach ($casos as $caso) {
			        			?>		        
						        <div class="swiper-slide">
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
<?php get_footer(); ?>
