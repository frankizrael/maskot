<footer>
  <div class="topfooter">
    <div class="x-container">
      <div class="x-flex">
        <div class="left">
          <div class="content-foot">
            <h2><?php the_field('visita_title','options'); ?></h2>
            <div class="desp"><?php the_field('visita_content','options'); ?></div>
            <div class="btn-a">
              <a href="https://api.whatsapp.com/send?phone=<?php the_field('wsp_number','options'); ?>" class="btn-wsp">
                <i><svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 26 26"><defs><style>.cls-whatsappblanco-1{fill:#fefefe;}</style></defs><title>whatsappblanco</title><path class="cls-whatsappblanco-1" d="M13,0A13,13,0,0,0,0,12.91,13.17,13.17,0,0,0,1.79,19.5L0,26l6.63-1.79A13.13,13.13,0,0,0,13,26,13.22,13.22,0,0,0,26,12.91,13.06,13.06,0,0,0,13,0Zm0,23.76A10.64,10.64,0,0,1,7.4,22.1L7,21.88l-3.85,1,1-3.76-.27-.41a10.81,10.81,0,0,1-1.66-5.78,10.76,10.76,0,0,1,21.52,0A10.87,10.87,0,0,1,13,23.76Zm6.34-8a.44.44,0,0,1,.22.49l-.13.63a2.7,2.7,0,0,1-1.17,1.71,3.65,3.65,0,0,1-3.05.35,13.63,13.63,0,0,1-7.35-5.33A5.82,5.82,0,0,1,6.52,9.06,3.73,3.73,0,0,1,7.77,7.13a1,1,0,0,1,.72-.27l.85,0a.38.38,0,0,1,.36.26L11,10.09a.54.54,0,0,1-.09.45L9.84,11.75a.35.35,0,0,0-.05.36,8.76,8.76,0,0,0,4.71,4,.36.36,0,0,0,.36-.09L16,14.62a.42.42,0,0,1,.53-.14Z"/></svg></i>Consulta aquí
              </a>
            </div>
            <div class="direction"><?php the_field('visita_direction','options'); ?></div>
          </div>
        </div>
        <div class="right">
          <div class="content-right-social">
            <div class="description_general">
              <?php the_field('contact_description','options'); ?>
            </div>
            <div class="social-independ">
              <h2>Síguenos</h2>
              <ul>
                <?php
                  $social = get_field('social','options');
                  if (!empty($social)) {
                  foreach ($social as $s) {
                    ?>
                  <li>
                    <a href="<?php echo $s['link'];?>">
                      <img src="<?php echo $s['imagen'];?>">
                    </a>
                  </li>
                    <?php
                  }
                  }
                ?>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="extrafooter">
    <div class="x-container">
      <div class="x-flex">
        <div class="left">
          <div class="logo">
              <a href="<?php echo site_url();?>">
                  <img src="<?php the_field('logo_verde','options'); ?>" alt="Maskot Sport">
              </a>
              <p>© 2019 Maskot Sport.</p>
          </div>  
        </div>
        <div class="right">
           Creado por Ludika 
        </div>
      </div>
    </div>
  </div>
</footer>
<?php wp_footer() ?>
</body>
</html>
</footer>
<script type="text/javascript">
(function($) {
    $(document).ready(function(){
        console.log("ღ Maskot Sport ღ \n Dev con Amor por wampy para Ludika ");
    });
})( jQuery );     
</script>
