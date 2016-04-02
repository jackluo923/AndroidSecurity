.class public Lcom/appyet/activity/WebBrowserActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;

# interfaces
.implements Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;


# instance fields
.field a:Z

.field b:Z

.field private c:Lcom/appyet/context/ApplicationContext;

.field private d:Landroid/webkit/WebView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/activity/WebBrowserActivity;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/activity/WebBrowserActivity;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a()Landroid/content/Intent;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/appyet/activity/WebBrowserActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/appyet/activity/WebBrowserActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/appyet/activity/WebBrowserActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/activity/WebBrowserActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/activity/WebBrowserActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/activity/WebBrowserActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/activity/WebBrowserActivity;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/activity/WebBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/activity/WebBrowserActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->h:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/appyet/activity/WebBrowserActivity;->h:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->h:Landroid/webkit/ValueCallback;

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/high16 v2, 0x1000000

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    invoke-virtual {v0, p0}, Lcom/appyet/manager/bw;->a(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030066

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebBrowserActivity;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->ActionBarBgColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v0, v0, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020072

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iput-object v3, p0, Lcom/appyet/activity/WebBrowserActivity;->i:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/appyet/activity/WebBrowserActivity;->j:I

    const v0, 0x7f0a00ec

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->g:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_2
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/appyet/activity/an;

    invoke-direct {v1, p0, p0}, Lcom/appyet/activity/an;-><init>(Lcom/appyet/activity/WebBrowserActivity;Lcom/appyet/activity/WebBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/appyet/activity/ao;

    invoke-direct {v1, p0}, Lcom/appyet/activity/ao;-><init>(Lcom/appyet/activity/WebBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/appyet/activity/am;

    invoke-direct {v1, p0}, Lcom/appyet/activity/am;-><init>(Lcom/appyet/activity/WebBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->f:Ljava/lang/String;

    :goto_2
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    if-eqz p1, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :goto_4
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "WebBrowser"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020073

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/appyet/activity/WebBrowserActivity;->i:Landroid/graphics/drawable/Drawable;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    invoke-static {v1}, Lcom/appyet/manager/ar;->c(Lcom/appyet/context/ApplicationContext;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/appyet/activity/WebBrowserActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const v0, 0x7f0a00f3

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ShareActionProvider;

    const-string v1, "share_history.xml"

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    invoke-direct {p0}, Lcom/appyet/activity/WebBrowserActivity;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    const v0, 0x7f0a00f5

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0117

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0a0119

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0a0118

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v4, v4, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v5, "DARK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0200c7

    invoke-interface {v0, v4}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200c5

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200c6

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200c4

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const v4, 0x7f0200d9

    invoke-interface {v0, v4}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200d7

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200d8

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200d6

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5

    :try_start_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :sswitch_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    invoke-virtual {p0}, Lcom/appyet/activity/WebBrowserActivity;->supportInvalidateOptionsMenu()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :sswitch_6
    :try_start_3
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/appyet/activity/WebBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a00f5 -> :sswitch_2
        0x7f0a0114 -> :sswitch_6
        0x7f0a0117 -> :sswitch_3
        0x7f0a0118 -> :sswitch_5
        0x7f0a0119 -> :sswitch_4
        0x7f0a011a -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 6

    const v5, 0x7f0a0118

    const v4, 0x7f0a0117

    const v3, 0x7f0a00f5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    :goto_0
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0119

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    :goto_1
    iget-boolean v0, p0, Lcom/appyet/activity/WebBrowserActivity;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/appyet/activity/WebBrowserActivity;->b:Z

    if-nez v0, :cond_2

    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    :goto_2
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0119

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    return-void

    :cond_1
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method public onShareTargetSelected(Lcom/actionbarsherlock/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 4

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, p2}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/activity/WebBrowserActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "Share"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebLink"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
