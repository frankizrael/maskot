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
                  Consulta aquí
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
                  $social = get_field('social');
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
