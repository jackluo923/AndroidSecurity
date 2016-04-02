function debug(key, value)
{
    if (isObject(value)) {
        var value = JSON.stringify(value);
    }
    console.log(key + ": -----> ");
    console.log(value);
}

function isObject(obj) {
  return obj instanceof Object && Object.getPrototypeOf(obj) === Object.prototype;
}

// ローカルストレージに値を保存
function saveLocalStorage(key, value)
{
    window.localStorage.setItem(key, JSON.stringify(value));
}

// ローカルストレージからデータを取得
function getLocalStorage(key)
{
    var d = window.localStorage.getItem(key);
    if (!d) {
        return null;
    }
    return results = JSON.parse(d);
}

// ローカルストレージのデータを削除
function removeLocalStorage(key)
{
    window.localStorage.removeItem(key);
}

  //広告をタップするとそのままリンク先を開いてしまうことがありますので、その対策を記述します。
$(document).delegate("a", "click", function() {
    var href = $(this).attr('href');
    if (href == "" || href == null) {
        return;
    }
    if (href.match(/nend\.net\/click.php/)) {
        // http://c1.nend.net/click.php?a=1402&c=15718&m=181458&i=184086&d=7086&s=40845&w=97133&k=1&p=300&q=250&v=1
        console.log("Nend広告がクリックされました。次のURLに移動します。: " + href);
        monaca.invokeBrowser(href);
        return false;
    } else {
    }
});