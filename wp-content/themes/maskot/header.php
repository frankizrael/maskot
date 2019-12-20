<!doctype html>
<html lang="<?php bloginfo( 'language' ) ?>">
<head>
    <meta charset="<?php bloginfo( 'charset' ) ?>">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">    
	  <?php
        $entry = get_query_var('ENTRY');
        load_assets(['main', $entry]);
        wp_head();
    ?>
</head>
<body <?php body_class(); ?>>

<div class="preload-dog">
    <div class="simple-dog">
      <div class="torso">
        <div class="fur">
          <div class="spot"></div>
        </div>
        <div class="neck">
          <div class="fur"></div>
          <div class="head">
            <div class="fur">
              <div class="snout"></div>          
            </div>
            <div class="ears">
              <div class="ear">
                <div class="fur"></div>
              </div>
              <div class="ear">
                <div class="fur"></div>
              </div>
            </div>
            <div class="eye"></div>
          </div>
          <div class="collar">
            
          </div>
        </div>
        <div class="legs">
          <div class="leg">
            <div class="fur"></div>
            <div class="leg-inner">
              <div class="fur"></div>
            </div>
          </div>
          <div class="leg">
            <div class="fur"></div>
            <div class="leg-inner">
              <div class="fur"></div>
            </div>
          </div>
          <div class="leg">
            <div class="fur"></div>
            <div class="leg-inner">
              <div class="fur"></div>
            </div>
          </div>
          <div class="leg">
            <div class="fur"></div>
            <div class="leg-inner">
              <div class="fur"></div>
            </div>
          </div>
        </div>
        <div class="tail">
          <div class="tail">
            <div class="tail">
              <div class="tail -end">
                <div class="tail">
                  <div class="tail">
                    <div class="tail">
                      <div class="tail"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>

<header>
    <div class="x-container">
        <div class="x-flex">
            <div class="left">
                <div class="logo">
                    <a href="<?php echo site_url();?>">
                        <img src="<?php the_field('logo','options'); ?>" alt="Maskot Sport">
                    </a>
                </div>            
            </div>
            <div class="center">
                <div class="soled-menu">
                    <?php wp_nav_menu( array( 'theme_location' => 'header-menu' ) ); ?>
                </div>
                <div class="mobile-icon" style="display: none;"><i></i></div>
            </div>
            <div class="right">
                <a href="https://api.whatsapp.com/send?phone=<?php the_field('wsp_number','options'); ?>" class="btn-wsp">
                    <i><svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 26 26"><defs><style>.cls-wp-1{fill:#ededed;}.cls-wp-2{fill:#05b93c;}.cls-wp-3{fill:#fefefe;}</style></defs><title>icono 5</title><path class="cls-wp-1" d="M0,26l1.79-6.5A13.17,13.17,0,0,1,0,12.91a13,13,0,0,1,26,0A13.22,13.22,0,0,1,13,26a13.13,13.13,0,0,1-6.33-1.79Z"/><path class="cls-wp-2" d="M7,21.88l.41.22A10.64,10.64,0,0,0,13,23.76,10.87,10.87,0,0,0,23.76,12.91,10.76,10.76,0,1,0,3.9,18.69l.27.41-1,3.76Z"/><path class="cls-wp-3" d="M9.34,6.91l-.85,0a1,1,0,0,0-.72.27A3.73,3.73,0,0,0,6.52,9.06a5.82,5.82,0,0,0,1.34,4.57A13.63,13.63,0,0,0,15.21,19a3.65,3.65,0,0,0,3.05-.35,2.7,2.7,0,0,0,1.17-1.71l.13-.63a.44.44,0,0,0-.22-.49l-2.83-1.3a.42.42,0,0,0-.53.14l-1.12,1.43a.36.36,0,0,1-.36.09,8.76,8.76,0,0,1-4.71-4,.35.35,0,0,1,.05-.36l1.07-1.21a.54.54,0,0,0,.09-.45L9.7,7.17a.38.38,0,0,0-.36-.26"/></svg></i>Consulta aquí
                </a>
            </div>
        </div>
    </div>
</header>