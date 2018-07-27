<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'rtpanel');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '4?8VboBZr@3D}an>`D|/L4 )cyACz@V[UKlzi%)PuZWhzQL/6oIeg7K#IBU3fTS}');
define('SECURE_AUTH_KEY',  '=z%O#0J-6~CECM0pP>EZ~[lVtw.[Z/i~~%,97^D9qo`W:*M.,7J-*y~l-tE]$`LJ');
define('LOGGED_IN_KEY',    'zd q{j&~<7nV:U^D7^gl)@/RErM9FDkipT!ggQYM?$bm[?j)CIR),KP~{]~N.CIK');
define('NONCE_KEY',        'j5j_00RpDP))Jb}?*Hf[|mKiodJdHqfWF:KmrrhKotrLJ.f~}&<`_+}4%w4U.-vn');
define('AUTH_SALT',        'Zc}0ok~<ovpH>eJfqy#]g~E653[bF95]ZD*D:L/gcEo{I[ix*y,g$&;m}r1JG*(Q');
define('SECURE_AUTH_SALT', 'Q>y]XA+({8nUL9RtgLA7b.Lc15nUybpM&lv gI/7sb44`mjmb{=>y-?={fWc}:C8');
define('LOGGED_IN_SALT',   '>@8>`l qK-^PRl&KQjwq?FHN.3unE%/;:9>7Z>>Lswdy]0)c%QvA@[yS% v3,O|H');
define('NONCE_SALT',       'V0P1%bVDQ+8nugmg ]=T++W]kjIf36TF<qF_B7<XA_KvM*-z[e!NR29M/`Cn} <l');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
