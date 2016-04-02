.class public Lcom/ali/user/mobile/h5/AUH5Plugin;
.super Ljava/lang/Object;
.source "AUH5Plugin.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Plugin;


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 30
    return-void
.end method


# virtual methods
.method public checkWebviewBridge(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 108
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "https://www.alipay.com/webviewbridge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntentExtra()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->b:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->b:Landroid/content/Intent;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public getPage()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "AliuserH5Plugin"

    const-string/jumbo v1, "handleEvent"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    const-string/jumbo v2, "AliuserH5Plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "interceptEvent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v2, "h5PageShouldLoadUrl"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 57
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string/jumbo v2, "AliuserH5Plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u56de\u8c03\u7684url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/h5/AUH5Plugin;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    const-string/jumbo v1, "AliuserH5Plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onOverrideUrlLoading:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/util/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v1, "mailto:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tel:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onFail()V

    .line 87
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 71
    :cond_2
    const-string/jumbo v2, "http://ab.alipay.com/agreement/contract.htm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "http://www.taobao.com/go/chn/member/agreement.php"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 72
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v3, "rt"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    const-string/jumbo v1, "dt"

    const-string/jumbo v3, "\u670d\u52a1\u534f\u8bae"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {v2}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v2, v0

    .line 71
    goto :goto_1

    .line 80
    :cond_4
    const-string/jumbo v0, "AliuserH5Plugin"

    const-string/jumbo v2, "\u672a\u5904\u7406url"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    move v0, v1

    .line 87
    goto :goto_0

    .line 81
    :cond_6
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 82
    const-string/jumbo v0, "h5ToolbarClose"

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    :cond_7
    const-string/jumbo v0, "AliuserH5Plugin"

    const-string/jumbo v2, "\u7528\u6237\u4e3b\u52a8\u9000\u51fa"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 85
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onFail()V

    goto :goto_2
.end method

.method protected onFail()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onInitialize()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 122
    const-string/jumbo v1, "quit"

    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onFail()V

    .line 131
    :goto_0
    return v0

    .line 126
    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isSuc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 128
    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onSuccess()V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "h5ToolbarClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    .line 104
    const-string/jumbo v0, "AliuserH5Plugin"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected onSuccess()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ali/user/mobile/h5/AUH5Plugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 34
    return-void
.end method
