.class public Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;
.super Lcom/ali/user/mobile/webview/WebViewActivity;
.source "NewAccountBindActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_webview"
.end annotation


# static fields
.field private static a:Lcom/ali/user/mobile/account/bind/OnBindCaller;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->b:I

    .line 17
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->b:I

    .line 66
    sget-object v0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onBindSuccess(Landroid/os/Bundle;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->finish()V

    .line 70
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->b:I

    .line 74
    sget-object v0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onBindError(Landroid/os/Bundle;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->finish()V

    .line 78
    return-void
.end method

.method public static final setOnBindCaller(Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    .line 29
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->finish()V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    .line 85
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 90
    sget-object v0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->b:I

    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onBindSuccess(Landroid/os/Bundle;)V

    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->setResult(I)V

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->finish()V

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_1
    return v0

    .line 95
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/account/bind/OnBindCaller;->onBindError(Landroid/os/Bundle;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->setResult(I)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x5001

    const/4 v0, 0x1

    .line 33
    const-string/jumbo v1, "NewAccountBindActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "overrideUrl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    const/16 v1, 0x5002

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->setResult(I)V

    .line 39
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->b()V

    .line 61
    :cond_1
    :goto_0
    return v0

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->urlHelper:Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;

    invoke-virtual {v1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 42
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 43
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "isSuc"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    const-string/jumbo v1, "NewAccountBindActivity"

    const-string/jumbo v2, "\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->setResult(ILandroid/content/Intent;)V

    .line 46
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a()V

    goto :goto_0

    .line 48
    :cond_3
    const-string/jumbo v2, "quit"

    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    const-string/jumbo v1, "NewAccountBindActivity"

    const-string/jumbo v2, "\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u8d85\u65f6"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v1, 0x5003

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->setResult(I)V

    .line 51
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->b()V

    goto :goto_0

    .line 53
    :cond_4
    const-string/jumbo v2, "continueLogin"

    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const-string/jumbo v1, "NewAccountBindActivity"

    const-string/jumbo v2, "\u7ed1\u5b9a\u624b\u673a\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/NewAccountBindActivity;->a()V

    goto :goto_0

    .line 61
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/webview/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
