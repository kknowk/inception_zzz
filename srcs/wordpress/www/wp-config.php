<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mariadb' );

/** Database username */
define( 'DB_USER', 'admin' );

/** Database password */
define( 'DB_PASSWORD', 'yushsato2457' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '.$6`wdOO[<Fz/v`*z ZfE_iIGrN8aWekDx(&#jO6O=yF@vgX39Q!0OU&(]+pRM`_' );
define( 'SECURE_AUTH_KEY',  'B}FwV>[Be|%[Y$lq#]#p%r.BEfI4w6JVHzuH-1EuKtKfd=ST{9<.zlX1%e|v{]<g' );
define( 'LOGGED_IN_KEY',    'Q^fVVkE(4xW&@[s9;oT:V<{6|C3Z-ByF.SUbYQ(Zw*VzBK+!q&(}i+Cf?g0pc%Af' );
define( 'NONCE_KEY',        '9 *6>`|$Vk:|k(.>Q]b]zrw>W_?78+i]w{_0s2{FjYk-WSx}Ew.A#k9m)ZXS(ey?' );
define( 'AUTH_SALT',        'fA5Zi )[k3smD8kl3|Y4N}*IeWX#3NAL[4kUBTGncq$VUm_(y/#^9ly8TDFoxVQ%' );
define( 'SECURE_AUTH_SALT', 'Pw3ka/CQDaSd*RN>ctv`!mg-qn/:Vl2e8J@&=bDVg$zQt-N+cdt,(s?<kTAU(~f[' );
define( 'LOGGED_IN_SALT',   'jEF6_hS`dE@CpF*I}6V-fwo[/|@<|/Q;VJ|F2D3PMy&Bp8,pL:1GKip;hybfI%iN' );
define( 'NONCE_SALT',       '2F6cfH%Kw<Rc19;o(7qQXG3QBG4I6H*Wj|UYhnM{NtW:4kF3Ba=W:9[6cK+h|k//' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
