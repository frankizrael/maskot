<?php /* Template Name: home */
set_query_var('ENTRY', 'homee');
get_header();
$id = get_the_ID();
?>
<section class="home">
	<div class="banner_home">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
		        	<div class="banner_item">		        		
						<div class="x-container">
							<div class="x-flex">
								<div class="banner_box">
									<div class="title">
										<h1><?php echo get_the_title($id); ?></h1>
										<div class="bajada">
											<?php 
												the_content();
											?>
										</div>
										<div class="link">
											<a href="#video" class="modalOpen btnWhite"><i><svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 26 26"><defs><style>.cls-play-1{fill:#05b93c;}</style></defs><title>play verde</title><path class="cls-play-1" d="M13,0A13,13,0,1,0,26,13,13,13,0,0,0,13,0Zm5.71,13.3-8.07,5.5a.31.31,0,0,1-.21.07.37.37,0,0,1-.17-.05.35.35,0,0,1-.19-.32V7.5a.36.36,0,0,1,.57-.3l8.07,5.5a.36.36,0,0,1,0,.6Z"/></svg></i>Ver presentación</a>
										</div>
									</div>
								</div>
								<div class="banner_imagen">
									<img src="<?php echo the_post_thumbnail_url($id); ?>">
								</div>
							</div>
						</div>
					</div>
		        </div>
				<?php
		        	$banners = get_field('banner');
		        	if (!empty($banners)){
		        		foreach ($banners as $banner) {
		        			?>		        
					        <div class="swiper-slide">
					        	<div class="banner_item">
					        		<div class="x-container">
										<div class="x-flex">
											<div class="banner_box">
												<div class="title">
													<h2><?php echo $banner['title']; ?></h2>
													<div class="bajada">
														<?php echo $banner['subtitle']; ?>
													</div>
													<div class="link">
														<a href="#video" class="modalOpen btnWhite"><i><svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 26 26"><defs><style>.cls-play-1{fill:#05b93c;}</style></defs><title>play verde</title><path class="cls-play-1" d="M13,0A13,13,0,1,0,26,13,13,13,0,0,0,13,0Zm5.71,13.3-8.07,5.5a.31.31,0,0,1-.21.07.37.37,0,0,1-.17-.05.35.35,0,0,1-.19-.32V7.5a.36.36,0,0,1,.57-.3l8.07,5.5a.36.36,0,0,1,0,.6Z"/></svg></i>Ver presentación</a>
													</div>
												</div>
											</div>
											<div class="banner_imagen">
												<img src="<?php echo $banner['imagen']; ?>">
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
		    <div class="swiper-pagination"></div>
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
	<svg class="svg_fondo" data-name="Modo de aislamiento" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1890 836"><defs><style>.cls-home-1{fill:#05b93c;}</style></defs><path class="cls-home-1" d="M127.08,619.52c181.56,107.46,483.24-81.11,1022,147.05,148.23,62.76,597,168.51,721.87-140.91,6.25-15.51,12.68-33.78,19-54.28V0H34.63C16,76.18,6.08,154.55,1.88,218.25-10,398.65,35,565,127.08,619.52Z"/></svg>
</section>
<section class="servicios">
	<div class="x-container">
		<div class="title-services">
			<h2><?php the_field('title_services');?></h2>
			<p class="sub-title"><?php the_field('subtitle_services');?></p>
		</div>
		<div class="flex-services x-flex">
			<?php
	        	$services = get_field('services');
	        	if (!empty($services)){
	        		foreach ($services as $service) {
	        			?>		        
				        <div class="services-item <?php if ($service['k9']){ echo 'services-k9';} ?>">
				        	<div class="box-item-services">
				        		<a href="<?php echo $service['link'];?>">
					        		<div class="front-box">					        			
					        			<img src="<?php echo $service['imagen'];?>">
					        			<h3><?php echo $service['title'];?></h3>
					        		</div>
					        		<div class="back-box">
					        			<div class="flex-box">
						        			<h3><?php echo $service['title'];?></h3>
						        			<div class="content-a">
						        				<?php echo $service['content'];?>
						        			</div>
						        			<div class="btn-class">Conoce más</div>
						        		</div>
					        		</div>
					        	</a>
				        	</div>
				        </div>
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
<section class="banner-about">
	<div class="x-container">
		<div class="x-flex">
			<div class="left">
				<h2><?php the_field('title_about');?></h2>
				<p class="bajada"><?php the_field('subtitle_about');?></p>
				<a href="<?php echo site_url();?>/nosotros">Conócenos</a>
			</div>
			<div class="right">
				<img src="<?php the_field('imagen_about');?>">
			</div>
		</div>
	</div>
</section>
<section class="acreditaciones-section">
	<div class="x-container">
		<div class="title-acreditaciones">
			<h2>
				<i><svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 54 54"><defs><style>.cls-arr-1{fill:#182023;}</style></defs><title>certificacion</title><path class="cls-arr-1" d="M50.84,0H3.16A3.17,3.17,0,0,0,0,3.16V38.6a3.17,3.17,0,0,0,3.16,3.17h26.5a10,10,0,0,0,5.13,5.7V53a1,1,0,0,0,1.61.89L39,52.22l2.63,1.62a1,1,0,0,0,.55.16,1,1,0,0,0,.51-.13,1.06,1.06,0,0,0,.55-.92V47.47a10,10,0,0,0,5.13-5.7h2.45A3.17,3.17,0,0,0,54,38.6V3.16A3.17,3.17,0,0,0,50.84,0ZM41.15,51.05l-1.57-1a1.06,1.06,0,0,0-1.11,0l-1.57,1V48.19a9.93,9.93,0,0,0,4.25,0ZM39,46.31a7.81,7.81,0,1,1,7.81-7.8A7.81,7.81,0,0,1,39,46.31ZM51.89,38.6a1.06,1.06,0,0,1-1,1.06h-2a11.09,11.09,0,0,0,.07-1.15,9.91,9.91,0,0,0-2.08-6.08,3.45,3.45,0,0,1,1-.16,1.05,1.05,0,0,0,1.06-1.05V10.55a1.05,1.05,0,0,0-1.06-1.06,3.37,3.37,0,0,1-3.37-3.37,1.05,1.05,0,0,0-1.06-1.06H31.33a1.06,1.06,0,0,0,0,2.11H42.5a5.51,5.51,0,0,0,4.33,4.33V30.27a5.41,5.41,0,0,0-1.55.55,9.91,9.91,0,0,0-15.37,3.77H11.5a5.49,5.49,0,0,0-4.33-4.32V11.5A5.51,5.51,0,0,0,11.5,7.17H22.89a1.06,1.06,0,1,0,0-2.11H10.55A1.05,1.05,0,0,0,9.49,6.12,3.37,3.37,0,0,1,6.12,9.49a1.05,1.05,0,0,0-1.06,1.06V31.22a1.05,1.05,0,0,0,1.06,1.05,3.38,3.38,0,0,1,3.37,3.38,1.05,1.05,0,0,0,1.06,1.05H29.27a10.78,10.78,0,0,0-.16,1.81,8.88,8.88,0,0,0,.07,1.15h-26A1.06,1.06,0,0,1,2.11,38.6V3.16A1,1,0,0,1,3.16,2.11H50.84a1,1,0,0,1,1,1.05ZM39,33.23a5.28,5.28,0,1,0,5.28,5.28A5.29,5.29,0,0,0,39,33.23Zm0,8.44a3.17,3.17,0,1,1,3.17-3.16A3.17,3.17,0,0,1,39,41.67ZM21.84,16.19a5.28,5.28,0,1,0,5.27-5.27A5.27,5.27,0,0,0,21.84,16.19Zm8.44,0A3.17,3.17,0,1,1,27.11,13,3.17,3.17,0,0,1,30.28,16.19ZM17.9,24.1H36.1a1.06,1.06,0,1,1,0,2.11H17.9a1.06,1.06,0,1,1,0-2.11Zm13.32,5.69a1.05,1.05,0,0,1-1.06,1.06H23.84a1.06,1.06,0,1,1,0-2.11h6.32A1.05,1.05,0,0,1,31.22,29.79ZM5.06,35.65a1.06,1.06,0,0,1,1.06-1.06,1.08,1.08,0,0,1,.74.31,1.06,1.06,0,0,1,.31.75,1,1,0,0,1-.31.74,1,1,0,0,1-.74.31,1.06,1.06,0,0,1-1.06-1.05ZM6.86,5.37a1.06,1.06,0,0,1,.31.75,1.06,1.06,0,0,1-1,1,1.06,1.06,0,0,1-.75-.31,1.08,1.08,0,0,1-.31-.74A1.06,1.06,0,0,1,6.12,5.06,1.08,1.08,0,0,1,6.86,5.37Zm41.77,0a1.1,1.1,0,0,1,.31.75,1.08,1.08,0,0,1-.31.74,1.06,1.06,0,0,1-.75.31,1.06,1.06,0,0,1-1.05-1,1.06,1.06,0,0,1,.31-.75,1.08,1.08,0,0,1,.74-.31A1.1,1.1,0,0,1,48.63,5.37Z"/></svg></i>
				<span><?php the_field('title_acreditaciones','options');?></span>
			</h2>
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
<section class="casos-exito">
	<div class="x-container">
		<div class="title-services">
			<h2><?php the_field('title_casos');?></h2>
			<p class="sub-title"><?php the_field('subtitle_casos');?></p>
		</div>
		<div class="carousel-casos">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<?php
			        	$args = array(
						  'numberposts' => 6,
						  'post_type'   => 'casos'
						);						 
						$casoss = get_posts( $args );
			        	if (!empty($casoss)){
			        		foreach ($casoss as $cass) {
			        			?>		        
						        <div class="swiper-slide">
						        	<div class="caso_item">
										<div class="caso_box">
											<div class="caso_imagen">
												<img src="<?php echo get_the_post_thumbnail_url($cass->ID); ?>">
											</div>
											<div class="caso_title">
												<h2><?php echo get_the_title($cass->ID); ?></h2>
												<div class="bajada">
													<?php echo get_field('date',$cass->ID); ?>
												</div>
											</div>
											<div class="caso_content">
												<div class="content_top">
													<?php echo get_field('tag',$cass->ID); ?>
												</div>
												<div class="content_descp">
													<?php echo get_field('resumen',$cass->ID); ?>
												</div>
												<div class="link">
													<a href="<?php echo get_permalink($cass->ID); ?>" class="btn">Ver caso</a>
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
			</div>
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>
		</div>
	</div>
</section>
<section class="blog">
	<div class="x-container">
		<div class="title-services not-service">
			<h2><?php the_field('title_blog');?></h2>
			<p class="sub-title"><?php the_field('subtitle_blog');?></p>
		</div>
		<div class="carousel-casos">
			<div class="blog-flex">
			<?php
	        	$args = array(
				  'numberposts' => 4,
				  'post_type'   => 'post'
				);						 
				$casos = get_posts( $args );
	        	if (!empty($casos)){
	        		foreach ($casos as $caso) {
	        			?>		        
				        <div class="blog-item">
				        	<div class="blog_box">
								<div class="blog_imagen">
									<img src="<?php echo get_the_post_thumbnail_url($caso->ID); ?>">
								</div>
								<div class="blog_title">
									<h2><?php echo get_the_title($caso->ID); ?></h2>
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
<?php get_footer();