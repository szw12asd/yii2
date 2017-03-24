<?php
use yii\widgets\Breadcrumbs;
use kartik\alert\Alert;

\backend\assets\ViewAsset::register($this);
?>
<div class="content-wrapper">
    <section class="content" style="padding: 1px">
        <?php
        $flash = Yii::$app->getSession()->getAllFlashes();
        if (!empty($flash)) {
            foreach ($flash as $key => $value) {
                switch ($key) {
                    case 'success':
                        $type = Alert::TYPE_SUCCESS;
                        $title = '操作成功';
                        $icon = 'fa fa-fw fa-check';
                        break;
                    case 'info':
                        $type = Alert::TYPE_INFO;
                        $title = '操作信息';
                        $icon = 'fa fa-fw fa-info';
                        break;
                    case 'warning':
                        $type = Alert::TYPE_WARNING;
                        $title = '操作警告';
                        $icon = 'fa fa-fw fa-warning';
                        break;
                    case 'danger':
                        $type = Alert::TYPE_DANGER;
                        $title = '操作失败';
                        $icon = 'fa fa-fw  fa-times';
                        break;
                    default:
                        $type = Alert::TYPE_PRIMARY;
                        $title = '操作';
                        $icon = 'fa fa-fw fa-info-circle';
                        break;
                }
                echo Alert::widget([
                    'type' => $type,
                    'title' => false,
                    'icon' => $icon,
                    'body' => $value,
                    'options' => [
                        'style' => 'margin:0px'
                    ]
                ]);
            }
        }
        ?>
        <?= $content ?>
    </section>
</div>

<footer class="main-footer">
    <div class="pull-right hidden-xs" style="margin-right: 5%">
        <strong>
            <table>
                <tr bgcolor="#FFFFFF">
                    <td>当前时间：</td>
                    <td id="CurrentTime"></td>
                    <script type="text/javascript">
                        function changetime() {
                            var ary = Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
                            var Timehtml = document.getElementById('CurrentTime');
                            var date = new Date();
                            Timehtml.innerHTML = '' + date.toLocaleString() + '   ' + ary[date.getDay()];
                        }
                        window.onload = function () {
                            changetime();
                            setInterval(changetime, 1000);
                        }
                    </script>
                </tr>
            </table>
        </strong>
    </div>
    <b><?php echo Yii::$app->id ?></b>
</footer>

<!-- Control Sidebar -->
<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
     immediately after the control sidebar -->
<div class='control-sidebar-bg'></div>