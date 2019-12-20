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
define( 'DB_NAME', 'dc_maskotsport' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'F.(zLX-o2|qq7.qt:#MUHDy*WHrEkfVp]ukp_ZMUpoIZ3>v/oJ.aOIj/MH&Nsa(s' );
define( 'SECURE_AUTH_KEY',  'ba;hj,#]E{&&6)M65+P%-ui?Q[b8(</X+2fXN4n67#{Tx;v9H)CnF}>_9BR:tEby' );
define( 'LOGGED_IN_KEY',    '&}m28.K#Ob;b*N1TLp#AcAPJkOgAp26,+KU^u*mGAjIA:&Q+E`&5 6YY 919[G7t' );
define( 'NONCE_KEY',        '|w#RfMbZnzg3%P~/&40StoB0!A%fNhx9(}snL,f&b-<#xV4T@.sOs=j:a?)})E7S' );
define( 'AUTH_SALT',        '`H|~Uw@%xQ$s2Sr/)X8El|%HlSD|({ym(19LD*~5n{-G8nLejzn&!3$e1d1mgqR;' );
define( 'SECURE_AUTH_SALT', ']t?F(uA]o(KVYH0Z<yI@9-&mAqmfN=*/PlK)2;x8?!7%6|1PSNO7UYdI!#Dy-v6b' );
define( 'LOGGED_IN_SALT',   'OMqU`~jv/yX.UEa$i/X)+Q-1q#n+xJ_B2*C#Td730*7//n61]Fw05MJBM,Upxo=R' );
define( 'NONCE_SALT',       '(qC^l99}_w`D$4X=q1jp=Y d-RX%Uru*b9g+f[JNH0rg05czuFvm1Up4WT(tKi$1' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'ms_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
