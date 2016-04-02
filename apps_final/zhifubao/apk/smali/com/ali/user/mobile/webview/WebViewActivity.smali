.class public Lcom/ali/user/mobile/webview/WebViewActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "WebViewActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_webview"
.end annotation


# static fields
.field public static final CALLBACK:Ljava/lang/String; = "https://www.alipay.com/webviewbridge"


# instance fields
.field public allowReadTitle:Z

.field protected mAPRelativeLayout:Landroid/widget/RelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "relativeLayout_webview"
    .end annotation
.end field

.field protected mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected mNick:Z

.field protected mSecurityId:Ljava/lang/String;

.field protected mToken:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mWebView:Landroid/webkit/WebView;

.field protected urlHelper:Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->allowReadTitle:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mNick:Z

    .line 46
    return-void
.end method


# virtual methods
.method public addCallBack(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    if-eqz p1, :cond_0

    const-string/jumbo v0, "https://www.alipay.com/webviewbridge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string/jumbo v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string/jumbo v0, "&callback="

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v0, "https://www.alipay.com/webviewbridge"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_0
    return-object p1

    .line 108
    :cond_1
    const-string/jumbo v0, "?callback="

    goto :goto_0
.end method

.method protected cancleOperation()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/WebViewActivity;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->finish()V

    .line 94
    return-void
.end method

.method protected createWebView()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 119
    new-instance v0, Lcom/ali/user/mobile/webview/WebViewActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/ali/user/mobile/webview/WebViewActivity$1;-><init>(Lcom/ali/user/mobile/webview/WebViewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
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

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mAPRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 153
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 155
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 157
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 158
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 159
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 162
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "cache"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 167
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 168
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 169
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 172
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 176
    const-string/jumbo v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    .line 175
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "accessibility"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 179
    const-string/jumbo v4, "accessibilityTraversal"

    aput-object v4, v2, v3

    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "setDomStorageEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_1

    .line 190
    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ali/user/mobile/webview/WebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/webview/WebViewActivity$2;-><init>(Lcom/ali/user/mobile/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 197
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ali/user/mobile/webview/WebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/webview/WebViewActivity$3;-><init>(Lcom/ali/user/mobile/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 198
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 199
    :cond_2
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string/jumbo v1, "WebViewActivity"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    const-string/jumbo v0, "WebViewActivity"

    const-string/jumbo v1, "2.2 setDomStorageEnabled Failed!"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mToken:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "UrlKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mUrl:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/WebViewActivity;->addCallBack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mUrl:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "securityId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mSecurityId:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;-><init>(Lcom/ali/user/mobile/webview/WebViewActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->urlHelper:Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;

    .line 78
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->createWebView()V

    .line 79
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->cancleOperation()V

    .line 85
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 275
    iget-object v2, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->urlHelper:Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;

    invoke-virtual {v2, p2}, Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/user/mobile/util/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 279
    iget-object v3, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mSecurityId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    const-string/jumbo v3, "securityId"

    .line 281
    iget-object v4, p0, Lcom/ali/user/mobile/webview/WebViewActivity;->mSecurityId:Ljava/lang/String;

    .line 280
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "quit"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    :cond_1
    const/16 v0, 0x102

    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 287
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 286
    invoke-virtual {p0, v0, v2}, Lcom/ali/user/mobile/webview/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->finish()V

    move v0, v1

    .line 308
    :cond_2
    :goto_0
    return v0

    .line 293
    :cond_3
    const-string/jumbo v2, "https://ab.alipay.com/agreement/contract.htm"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "https://tms.alicdn.com/go/chn/member/agreement.php"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    .line 298
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 299
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v3, "rt"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    const-string/jumbo v0, "dt"

    const-string/jumbo v3, "\u670d\u52a1\u534f\u8bae"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {v2}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Landroid/os/Bundle;)V

    move v0, v1

    .line 303
    goto :goto_0

    :cond_4
    move v2, v1

    .line 293
    goto :goto_1

    .line 307
    :cond_5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    .line 308
    goto :goto_0
.end method

.method protected setAppId()V
    .locals 0

    .prologue
    .line 330
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
