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
					<ul class="slider">
						<?php wp_reset_query();
						query_posts("post_type=slider");  // calling custom post type slider
						if (have_posts()) :while (have_posts()) : the_post(); ?>
						<li><span class="sliderimgs"><?php if ( has_post_thumbnail() ) {the_post_thumbnail();}else the_content(); ?></span>	
							<span class="slider_contents">
							<h1><a href="<?php the_permalink() ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h1>
							<p class="desc_titlemain" >
							<?php if ( ! has_excerpt() ) {  // checking wheather exceprt exist or not
							$post_contents = substr(get_the_content(), 0, 200); 
							echo strip_tags($post_contents);
							} else { the_excerpt();	} ?></p>
							</span>	
						</li>
						<?php  endwhile; endif;?>
					</ul>
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