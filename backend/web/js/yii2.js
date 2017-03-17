/**
 * Created by SZW on 2017/3/17.
 */
function toRoute(val){
    var url = document.URL;
    var path = url.split('index.php');
    return path[0]+'index.php'+'/'+val;
}