.class public Lcom/ali/user/mobile/webview/HtmlActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "HtmlActivity.java"


# static fields
.field public static TITLE:Ljava/lang/String;

.field public static URL:Ljava/lang/String;


# instance fields
.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field protected mUrl:Ljava/lang/String;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "url"

    sput-object v0, Lcom/ali/user/mobile/webview/HtmlActivity;->URL:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "title"

    sput-object v0, Lcom/ali/user/mobile/webview/HtmlActivity;->TITLE:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    return-void
.end method

.method private static varargs a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 143
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string/jumbo v1, "HtmlActivity"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected closeWebView()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/ali/user/mobile/webview/HtmlActivity$4;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/webview/HtmlActivity$4;-><init>(Lcom/ali/user/mobile/webview/HtmlActivity;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/HtmlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object p3

    :cond_1
    move-object p3, v0

    goto :goto_0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected initWebView()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 111
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/HtmlActivity;->registerShouldOverrideUrlLoading()V

    .line 117
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/HtmlActivity;->setWebChromeClient()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 124
    const-string/jumbo v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "accessibility"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 127
    const-string/jumbo v4, "accessibilityTraversal"

    aput-object v4, v2, v3

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string/jumbo v1, "setAllowFileAccessFromFileURLs"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/webview/HtmlActivity;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 134
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string/jumbo v1, "setAllowUniversalAccessFromFileURLs"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/webview/HtmlActivity;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 135
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string/jumbo v1, "HtmlActivity"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected injectionAllViewBean()V
    .locals 2

    .prologue
    .line 194
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 195
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    .line 197
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 199
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->htmlView:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    .line 200
    return-void
.end method

.method protected isEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 203
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadUrl()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_html:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/HtmlActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/HtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/ali/user/mobile/webview/HtmlActivity;->URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mUrl:Ljava/lang/String;

    .line 44
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 45
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->title_back:I

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/webview/HtmlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonText(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/ali/user/mobile/webview/HtmlActivity$1;

    invoke-direct {v2, p0}, Lcom/ali/user/mobile/webview/HtmlActivity$1;-><init>(Lcom/ali/user/mobile/webview/HtmlActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/HtmlActivity;->injectionAllViewBean()V

    .line 55
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/HtmlActivity;->initWebView()V

    .line 56
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/HtmlActivity;->loadUrl()V

    .line 61
    :goto_1
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[a-z]{1,}\\.(taobao|alipay|alibaba|alimama){1}\\.[a-z]{1,}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 58
    :cond_2
    const-string/jumbo v0, "HtmlActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/HtmlActivity;->finish()V

    goto :goto_1
.end method

.method protected processCustomLogic(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 173
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 177
    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/webview/HtmlActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/HtmlActivity;->closeWebView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerShouldOverrideUrlLoading()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ali/user/mobile/webview/HtmlActivity$3;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/webview/HtmlActivity$3;-><init>(Lcom/ali/user/mobile/webview/HtmlActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 162
    return-void
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 231
    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mAppId:Ljava/lang/String;

    .line 232
    return-void
.end method

.method protected setTitles(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method protected setWebChromeClient()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ali/user/mobile/webview/HtmlActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/webview/HtmlActivity$2;-><init>(Lcom/ali/user/mobile/webview/HtmlActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 101
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
