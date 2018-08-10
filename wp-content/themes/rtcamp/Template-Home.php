<?php
/**
 * Template Name:Home
 *
 * Template File for Home page
 */

get_header();
?>

<div id="primary" class="content-area">
<main id="main" class="site-main">
	<div class="slider_outer">
		<div class="container">
			<div class="slidercontainer">
				<div id="jssor_1" style="max-width: 100%;position:relative;margin:0 auto;top:0px;left:0px;width:930px;height:290px;overflow:hidden;visibility:hidden;">
					<div data-u="slides" style="max-width: 100%;cursor:default;position:relative;top:0px;left:0px;width:930px;height:290px;overflow:hidden;">
					<?php wp_reset_query();
					query_posts("post_type=slider");  // calling custom post type slider
					if (have_posts()) :while (have_posts()) : the_post(); ?>
					<div>		
						<?php if ( has_post_thumbnail() )  { ?>
							<img data-u="" src="<?php the_post_thumbnail_url("full"); ?>" />
							<?php } else { 
								$post = get_post( get_the_ID() );
								$content = $post->post_content;
								$regex = '/src="([^"]*)"/';
								preg_match_all( $regex, $content, $matches );
								$matches = array_reverse($matches);
								?>
								<img data-u="" src="<?php echo $matches[0][0]; ?>" />
						<?php } ?>
						<span class="slider_contents">
						<h1><a href="<?php the_permalink() ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h1>
						<p class="desc_titlemain" >
						<?php if ( ! has_excerpt() ) {  // checking wheather exceprt exist or not
						$post_contents = substr(get_the_content(), 0, 200); 
						echo strip_tags($post_contents);
						} else { the_excerpt();	} ?></p>
						</span>	
						<span class="nav_outer_dt"></span>
					</div>
					<?php  endwhile; endif;?>
					</div>
					<!-- Bullet Navigator -->
					<div data-u="navigator" class="jssorb031" style="position: absolute;display: block;top: 103.974px;right:10px;width: 45px;height: 164.297px;" data-autocenter="2" data-scale="0.5" data-scale-right="0.75">
					<div data-u="prototype" class="i" style="width:13px;height:13px;">
					<svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
					<circle class="b" cx="8000" cy="8000" r="5800"></circle>
					</svg>
					</div>
					</div>
					<!-- Arrow Navigator -->
					<div data-u="arrowleft" class="jssora093 one" style="width:32px;height:32px;top:0px;right:0;" data-scale="0.75" data-scale-left="0.75">
					<span class="left" ></span>       
					</div>
					<div data-u="arrowright" class="jssora093 two" style="width:32px;height:32px;bottom:0px;right:0;" data-scale="0.75" data-scale-right="0.75">
					<span class="right" ></span>
					</div>
					<!-- Arrow Navigator -->
					<script type="text/javascript">jssor_1_slider_init();</script>
				</div> 
			</div>
		</div>
	</div>
			<div class="page_contents">
				<div class="container">
				<div class="tab">
				<?php
				// calling sub pages of home page
				wp_reset_query();
				$pageid = get_the_ID();
				$pages_section = array(
					'post_type'     => 'page',
					'child_of'      => $pageid,
					'sort_column' => 'menu_order',
					'sort_order'    => 'ASC',
					'parent'            => $pageid
				);
				$sections = get_pages($pages_section);
				$count=0;
				foreach($sections as $section){
				?>
				<button class="tablinks" onmouseover="openCity(event, 'id_<?php echo $section->ID; ?>')" <?php if($count==0) echo "id='defaultOpen'"; ?> ><?php echo $section->post_title; ?></button>
				<?php $count++; }
				?> 
				</div>
				<?php foreach($sections as $section){
				?>
					<div id="id_<?php echo $section->ID; ?>" class="tabcontent">
					   <ul>
                <?php
				/* here latest 3 pages of the selected page will be displayed */
                    $portfolio_pages = array(
                        'post_type'     => 'page',
                        'child_of'      => $section->ID,
                        'sort_column' => 'menu_order',
                        'sort_order'    => 'ASC',
                        'parent'            => $section->ID,
						'number' => 3
                    );
                    $pages = get_pages($portfolio_pages);
                    foreach($pages as $page){
                        ?>
                            <li>
							<a href="<?php echo get_the_permalink($page->ID);?>">
							<?php echo get_the_post_thumbnail($page->ID, "full"); ?>
							</a>
							<h3>
							<a href="<?php echo get_the_permalink($page->ID);?>">
							<?php echo get_the_title($page->ID);?></span>
							</a>
							</h3>
							<p>
							<?php if ( has_excerpt( $page->ID ) ) {
									$exp=get_the_excerpt($page->ID);
								} else {
									$exp=$page->post_content;
								}
								$post_contents = substr($exp, 0, 80); 
								echo strip_tags($post_contents);
								?>
							</p>
							</li>
                        <?php
							}
						?>
					</ul>
					</div>
					  <?php   
					}
				?>
				</div>
			</div>	
		</main><!-- #main -->
	</div><!-- #primary -->
<?php get_footer(); ?>
