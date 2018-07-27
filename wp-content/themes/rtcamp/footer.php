<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package rtcamp
 */

?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer">
	<div class="footer2">
		<div class="container"> 
			<?php if ( is_active_sidebar( 'footerwidget-1' ) ) : ?>
			<ul id="footerwid">
				<?php dynamic_sidebar( 'footerwidget-1' ); ?>
			</ul>
			<?php endif; ?><!-- #calling footer widget after creating widget in function.php -->
		</div>
	</div>
		<div class="site-info">
			<div class="container ">
				<div class="bottom_footer">
					<nav id="site-navigation2" class="main-navigation footer">
							<?php
							wp_nav_menu( array(
								'theme_location' => 'menu-3',
								'menu_id'        => 'Footer-menu',
							) );
							?>
					</nav><!-- Footer navigation -->
					<?php if ( function_exists( 'ot_get_option' ) && $test_input = ot_get_option( 'footer_logo' ) ) { ?>
					<a href="<?php echo get_option('home'); ?>/" class="logoimg"><img src="<?php echo $test_input;?>" alt="Rt panel" /> </a>
					<?php } ?><!-- calling option tree for theme option logo -->
					<div class="copyright">
					<?php if ( function_exists( 'ot_get_option' ) && $test_input = ot_get_option( 'copyright_statement' ) ) { ?>
					<p><?php echo $test_input;?></p>
					<?php } ?><!-- calling option tree for copy right statement -->
					</div>
				</div><!-- .footer bottom -->
			</div>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="<?php bloginfo('template_directory')?>/lib/bxslider/jquery.bxslider.js"></script>
	<script>
  $(document).ready(function(){
    $('.slider').bxSlider({
	  pager: true,
	  mode: 'vertical'
	});
	
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").onmouseover();
  });
  function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

</script>
<?php wp_footer(); ?>

</body>
</html>
