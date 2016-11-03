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
define('DB_NAME', 'wp_ainslie');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'sJwd,-07,zXB::ofB;RR>Gqo7)b,f(i0/{k_q]czSggXHS]Qv}-:^!$aJSLs$7jV');
define('SECURE_AUTH_KEY',  '4v)``Cj~c:3bX!FFdbB5]N>DVn:6V28pQAvtHr]T6004?I*xVy(Dn_?Mt@J&ehM~');
define('LOGGED_IN_KEY',    'fyIp`67{a53p:*t/!u-p(VTfRqK`nWN$40Hf~f<rqicjb&~=qdk_a!=cPu}FkZ:H');
define('NONCE_KEY',        '.U,x-ncmL?]Y/XyE&im;-P8fk0FcFgx-tm`?&s,J}fU1C;Jp<}_ASH:%PD,Td.q/');
define('AUTH_SALT',        'F~,z9FY(JMx$.a|F)RB/M5iL8q5{j+qic9>BLQ:H;:8bL|c).Z=;NTaLVI!+Nuqm');
define('SECURE_AUTH_SALT', '`i?iK*P8Fvb=Vi|;l*di}Z]/^4=t`(E8K-:7`L:Yw_u@l!_ io,ziwL>i(cw(,Is');
define('LOGGED_IN_SALT',   '_U!:Q#Yr_Q(nxi9=EH+wR,Fdq,]Zdv%qtp;3M3DX4wi4C*ry_jAy}nyT1#Cs@p19');
define('NONCE_SALT',       '&uJB!dGip`Yz*:q~YH7!09og6.Y^>hS)ir0.U#?hn<fa-@TpNFGlIKS&YQ+#9D2+');

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
