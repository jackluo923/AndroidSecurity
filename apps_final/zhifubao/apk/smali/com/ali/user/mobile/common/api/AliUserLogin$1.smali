.class Lcom/ali/user/mobile/common/api/AliUserLogin$1;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/os/Bundle;

.field private final synthetic b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

.field private final synthetic c:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    iput-object p4, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->c:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;

    invoke-direct {v0}, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "scene"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    :cond_0
    const-string/jumbo v1, "bindtaobao"

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->scene:Ljava/lang/String;

    .line 123
    :goto_0
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->appId:Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "https://www.alipay.com/webviewbridge?isSuc=true"

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->callbackUrl:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUrlFetchService()Lcom/ali/user/mobile/service/UrlFetchService;

    move-result-object v1

    const-string/jumbo v2, "alipay"

    invoke-interface {v1, v0, v2}, Lcom/ali/user/mobile/service/UrlFetchService;->foundH5urls(Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onPreBind(Landroid/os/Bundle;)V

    .line 131
    :cond_1
    iget v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    .line 132
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    invoke-static {v1}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->setOnBindCaller(Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->b:Landroid/content/Context;
    invoke-static {v2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$0(Lcom/ali/user/mobile/common/api/AliUserLogin;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string/jumbo v2, "UrlKey"

    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->h5Url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 137
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    :cond_3
    :goto_1
    return-void

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "scene"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->scene:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    if-eqz v1, :cond_3

    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 142
    const-string/jumbo v2, "memo"

    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->memo:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$1;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onBindError(Landroid/os/Bundle;)V

    goto :goto_1
.end method
