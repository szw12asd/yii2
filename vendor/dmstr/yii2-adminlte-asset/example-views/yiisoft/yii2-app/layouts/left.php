<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= Yii::$app->params['img_path'].(empty($user->logo) ? '/logo/profile_small.jpg':$user->logo)?>" class="img-circle" alt="User Image"/>
            </div>
            <div class="info" style="text-align: center">
                <p><a href="javascript:void(0) "><?=$user->username ?></a></p>

                <a href="javascript:void(0) "><i class="fa fa-circle text-success"></i> <?=$userRole ?></a>
            </div>
        </div>

        <!-- search form -->
<!--        <form action="#" method="get" class="sidebar-form">-->
<!--            <div class="input-group">-->
<!--                <input type="text" name="q" class="form-control" placeholder="Search..."/>-->
<!--              <span class="input-group-btn">-->
<!--                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>-->
<!--                </button>-->
<!--              </span>-->
<!--            </div>-->
<!--        </form>-->
        <!-- /.search form -->
        <?php
        $menus = [];
        $menus[]=['label' => '后台菜单', 'options' => ['class' => 'header']];
        foreach ($menu as $value){
            if(!empty($value['_child'])){
                $items=[];
                foreach ($value['_child'] as $v2){
                    if(!empty($v2['_child'])){
                        $childs=[];
                        foreach ($v2['_child'] as $v3){
                            $childs[]=[
                                'label' => $v3['name'],
                                'icon' => empty($v3['data']) ? 'fa fa-circle-o':json_decode($v3['data'], true)['icon'],
                                'url' => [$v3['route']],
                            ];
                        }
                        $items[]=[
                            'label' => $v2['name'],
                            'icon' => empty($v2['data']) ? 'fa fa-circle-o':json_decode($v2['data'], true)['icon'],
                            'url' => '#',
                            'items'=>$childs
                        ];
                    }else{
                        $items[]=[
                            'label' => $v2['name'],
                            'icon' => empty($v2['data']) ? 'fa fa-circle-o':json_decode($v2['data'], true)['icon'],
                            'url' => [$v2['route']],
                        ];
                    }
                }
                $menus[] = [
                    'label' => $value['name'],
                    'icon' => empty($value['data']) ? 'fa fa-circle-o':json_decode($value['data'], true)['icon'],
                    'url' => '#',
                    'items'=>$items
                ];
            }else{
                $menus[] = [
                    'label' => $value['name'],
                    'icon' => empty($value['data']) ? 'fa fa-circle-o':json_decode($value['data'], true)['icon'],
                    'url' => [$value['route']],
                ];
            }
        }
        ?>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu'],
                'items' =>$menus
//                    [
//                    ['label' => '后台菜单', 'options' => ['class' => 'header']],
//                    [
//                        'label' => 'Same tools',
//                        'icon' => 'fa fa-share',
//                        'url' => '#',
//                        'items' => [
//                            ['label' => 'Gii', 'icon' => 'fa fa-file-code-o', 'url' => ['/gii'],],
//                            ['label' => 'Debug', 'icon' => 'fa fa-dashboard', 'url' => ['/debug'],],
//                            [
//                                'label' => 'Level One',
//                                'icon' => 'fa fa-circle-o',
//                                'url' => '#',
//                                'items' => [
//                                    ['label' => 'Level Two', 'icon' => 'fa fa-circle-o', 'url' => '#',],
//                                    [
//                                        'label' => 'Level Two',
//                                        'icon' => 'fa fa-circle-o',
//                                        'url' => '#',
//                                        'items' => [
//                                            ['label' => 'Level Three', 'icon' => 'fa fa-circle-o', 'url' => '#',],
//                                            ['label' => 'Level Three', 'icon' => 'fa fa-circle-o', 'url' => '#',],
//                                        ],
//                                    ],
//                                ],
//                            ],
//                        ],
//                    ],
//                ],
            ]
        ) ?>

    </section>

</aside>
