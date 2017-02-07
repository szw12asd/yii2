<?php
use yii\widgets\Breadcrumbs;
use dmstr\widgets\Alert;

?>
<div class="content-wrapper">
    <section class="content-header">
<!--        --><?php //if (isset($this->blocks['content-header'])) { ?>
<!--            <h1>--><?//= $this->blocks['content-header'] ?><!--</h1>-->
<!--        --><?php //} else { ?>
<!--            <h1>-->
<!--                --><?php
//                if ($this->title !== null) {
//                    echo \yii\helpers\Html::encode($this->title);
//                } else {
//                    echo \yii\helpers\Inflector::camel2words(
//                        \yii\helpers\Inflector::id2camel($this->context->module->id)
//                    );
//                    echo ($this->context->module->id !== \Yii::$app->id) ? '<small>Module</small>' : '';
//                } ?>
<!--            </h1>-->
<!--        --><?php //} ?>

        <?=
        Breadcrumbs::widget(
            [
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]
        ) ?>
    </section>

    <section class="content">
        <?= Alert::widget() ?>
        <?= $content ?>
    </section>
</div>

<footer class="main-footer">
    <div class="pull-right hidden-xs" style="margin-right: 5%">
        <strong><table>
                <tr bgcolor="#FFFFFF">
                    <td>当前时间：</td>
                    <td id="CurrentTime"></td>
                    <script type="text/javascript">
                        function changetime(){
                            var ary = Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
                            var Timehtml = document.getElementById('CurrentTime');
                            var date = new Date();
                            Timehtml.innerHTML = ''+date.toLocaleString()+'   '+ary[date.getDay()];
                        }
                        window.onload = function(){
                            changetime();
                            setInterval(changetime,1000);
                        }
                    </script>
                </tr>
            </table></strong>
    </div>
    <b><?php echo Yii::$app->id ?></b>
</footer>

<!-- Control Sidebar -->
<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
     immediately after the control sidebar -->
<div class='control-sidebar-bg'></div>