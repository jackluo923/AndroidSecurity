.class public final Lcom/google/zxing/client/android/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/HelpActivity$HelpClient;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String;

.field public static final DEFAULT_PAGE:Ljava/lang/String; = "index.html"

.field public static final REQUESTED_PAGE_KEY:Ljava/lang/String; = "requested_page_key"

.field private static final WEBVIEW_STATE_PRESENT:Ljava/lang/String; = "webview_state_present"

.field public static final WHATS_NEW_PAGE:Ljava/lang/String; = "whatsnew.html"

.field private static fakeR:Lcom/google/zxing/FakeR;


# instance fields
.field private backButton:Landroid/widget/Button;

.field private final backListener:Landroid/view/View$OnClickListener;

.field private final doneListener:Landroid/view/View$OnClickListener;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/html-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/zxing/client/android/LocaleManager;->getTranslatedAssetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/HelpActivity;->BASE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/google/zxing/client/android/HelpActivity$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/HelpActivity$1;-><init>(Lcom/google/zxing/client/android/HelpActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/HelpActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Lcom/google/zxing/client/android/HelpActivity$2;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/HelpActivity$2;-><init>(Lcom/google/zxing/client/android/HelpActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/HelpActivity;->doneListener:Landroid/view/View$OnClickListener;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/client/android/HelpActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/HelpActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/zxing/client/android/HelpActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/HelpActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/zxing/client/android/HelpActivity;->backButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v3, Lcom/google/zxing/FakeR;

    invoke-direct {v3, p0}, Lcom/google/zxing/FakeR;-><init>(Landroid/app/Activity;)V

    sput-object v3, Lcom/google/zxing/client/android/HelpActivity;->fakeR:Lcom/google/zxing/FakeR;

    .line 72
    sget-object v3, Lcom/google/zxing/client/android/HelpActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "layout"

    const-string v5, "help"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/HelpActivity;->setContentView(I)V

    .line 74
    sget-object v3, Lcom/google/zxing/client/android/HelpActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "id"

    const-string v5, "help_contents"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    .line 75
    iget-object v3, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/google/zxing/client/android/HelpActivity$HelpClient;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/zxing/client/android/HelpActivity$HelpClient;-><init>(Lcom/google/zxing/client/android/HelpActivity;Lcom/google/zxing/client/android/HelpActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/zxing/client/android/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v3, "webview_state_present"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 94
    :goto_0
    sget-object v3, Lcom/google/zxing/client/android/HelpActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "id"

    const-string v5, "back_button"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/zxing/client/android/HelpActivity;->backButton:Landroid/widget/Button;

    .line 95
    iget-object v3, p0, Lcom/google/zxing/client/android/HelpActivity;->backButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/google/zxing/client/android/HelpActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget-object v3, Lcom/google/zxing/client/android/HelpActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "id"

    const-string v5, "done_button"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "doneButton":Landroid/view/View;
    iget-object v3, p0, Lcom/google/zxing/client/android/HelpActivity;->doneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void

    .line 83
    .end local v0    # "doneButton":Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_2

    .line 84
    const-string v3, "requested_page_key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "page":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/zxing/client/android/HelpActivity;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/zxing/client/android/HelpActivity;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "index.html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v2    # "page":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/zxing/client/android/HelpActivity;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "index.html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 111
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 114
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/google/zxing/client/android/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 105
    const-string v1, "webview_state_present"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    :cond_0
    return-void
.end method
