<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);


return [
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'language' => 'zh-CN',
    'charset' => 'UTF-8',
    'timeZone' => 'Asia/Shanghai',
    'modules' => [
        'admin' => [
            'class' => 'mdm\admin\Module',
//            'layout' => 'left-menu',//yii2-admin的导航菜单
        ],
        'gridview' => [
            'class' => '\kartik\grid\Module',
            'downloadAction' => 'gridview/export/download',
        ],
        'datecontrol' => [
            'class' => 'kartik\datecontrol\Module',

            // format settings for displaying each date attribute
            'displaySettings' => [
                'date' => 'd-m-Y',
                'time' => 'H:i:s A',
                'datetime' => 'd-m-Y H:i:s A',
            ],

            // format settings for saving each date attribute
            'saveSettings' => [
                'date' => 'Y-m-d',
                'time' => 'H:i:s',
                'datetime' => 'Y-m-d H:i:s',
            ],


            // automatically use kartik\widgets for each of the above formats
            'autoWidget' => true,

        ]
    ],
    'name' => 'YII',
    "aliases" => [
        "@mdm/admin" => "@vendor/mdmsoft/yii2-admin",
    ],
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        'allowActions' => [
//            'site/*',//允许访问的节点，可自行添加
//            'admin/*',//允许所有人访问admin节点及其子节点
//            'debug/*',
            '*'
        ]
    ],
    'components' => [
        //SQLSERVER数据库配置
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'sqlsrv:Server=localhost;Database=yii2',
            'username' => 'phper',
            'password' => 'szw12asd',
            'charset' => 'utf8'
        ],
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager', // 使用数据库管理配置文件保存数据库 PhpManager保存在文件中
            "defaultRoles" => ["guest"],
        ],
        'user' => [
            'identityClass' => 'backend\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'redis' => [
            'class' => 'yii\redis\Connection',
            'hostname' => 'localhost',
            'port' => 6379,
            'database' => 0,
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
//            'class' => 'yii\redis\Session',
            'timeout' => 6000,
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
//            'showScriptName' => false,
            'rules' => [
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            ],
        ],
    ],
    'params' => $params,
];
