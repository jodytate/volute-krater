<?php

function volute_krater_enqueue_fonts() {
  wp_enqueue_style(
    'volute-krater-fonts',
    'https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&display=swap',
    [],
    null
  );
}
add_action('wp_enqueue_scripts', 'volute_krater_enqueue_fonts');
