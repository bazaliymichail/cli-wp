<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'wp-cli' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'x1NkH_OTeiS!rLHWGC6R9yo1Uwu!SF$=^tI*DPyMzZ:b-yQmk%mX~Egu56hbMv>,' );
define( 'SECURE_AUTH_KEY',  '2sCSIb^~qncpU@zFVT217W}J`8/Jy6lFgHjT9@o@uCPIRgZRYf]li?1PAaWm7E57' );
define( 'LOGGED_IN_KEY',    '7]sVFQs@x8&V (2{+Pa|u7{>YHVABh<m_{hn2TT4;)ikkcxC.cxXji%*O!28^rzT' );
define( 'NONCE_KEY',        '%!@ur+=O8PdgLXJL_dK*+@b}@hCA?zDDf=9p9 pD%!y~WOR@F/xLe]UJLYvR%re|' );
define( 'AUTH_SALT',        '8.m}!d5K36Wuk8Y6vSujlxpI,8?7zrK=(]N8B@bo`^4:}FARPe)dBcWXNtn+JuH^' );
define( 'SECURE_AUTH_SALT', 'EMG5f;&`8CzZ:keA-=&!ATR&V_b+7$J,=`B^?v,a0;r}mow/].6G~^}_~TK9.,|}' );
define( 'LOGGED_IN_SALT',   'L@9I{v1C.wuc]%xp@F;6Ox5$;;)}DBezsy]WK~rTAel96p-RG=}>wv<A*XX;uB ]' );
define( 'NONCE_SALT',       '[R/E[ttj6u$o0y*v=U= zVi!R$7xn(nuQ hNcmK)adbgsrB;T>BGjZi/ar_%^U>x' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
