.class public Lae/gov/mol/fragment/eTasheel/WebviewActivity;
.super Landroid/app/Activity;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;,
        Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyChromeClient;,
        Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyGestureDetector;
    }
.end annotation


# static fields
.field public static flag:Z


# instance fields
.field checkTag:I

.field mIntent:Landroid/content/Intent;

.field private parentLayout:Landroid/widget/LinearLayout;

.field private requestUrl:Ljava/lang/String;

.field videoURL:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->flag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->videoURL:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->checkTag:I

    .line 29
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 128
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 131
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 49
    const v2, 0x7f030072

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->setContentView(I)V

    .line 50
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->mIntent:Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fb"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->videoURL:Ljava/lang/String;

    .line 52
    const v2, 0x7f0900b8

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fb"

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->videoURL:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v7, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 55
    const v2, 0x7f060329

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->parentLayout:Landroid/widget/LinearLayout;

    .line 56
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->videoURL:Ljava/lang/String;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->requestUrl:Ljava/lang/String;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URL..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->requestUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 58
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    .line 59
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->getLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;-><init>(Lae/gov/mol/fragment/eTasheel/WebviewActivity;Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 62
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyChromeClient;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyChromeClient;-><init>(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 63
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 65
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 66
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 67
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->parentLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->requestUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyGestureDetector;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyGestureDetector;-><init>(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)V

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 72
    .local v0, "gestureDetector":Landroid/view/GestureDetector;
    new-instance v1, Lae/gov/mol/fragment/eTasheel/WebviewActivity$1;

    invoke-direct {v1, p0, v0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity$1;-><init>(Lae/gov/mol/fragment/eTasheel/WebviewActivity;Landroid/view/GestureDetector;)V

    .line 77
    .local v1, "gestureListener":Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    return-void
.end method
