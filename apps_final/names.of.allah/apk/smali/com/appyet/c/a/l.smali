.class public final Lcom/appyet/c/a/l;
.super Lcom/actionbarsherlock/app/SherlockFragment;


# instance fields
.field private a:I

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/ProgressBar;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Long;

.field private l:Lcom/appyet/c/a/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    const-string v0, "http://APPYET_BASE"

    iput-object v0, p0, Lcom/appyet/c/a/l;->g:Ljava/lang/String;

    const-string v0, "IMG_APPYET"

    iput-object v0, p0, Lcom/appyet/c/a/l;->h:Ljava/lang/String;

    const-string v0, "COMMENT_APPYET"

    iput-object v0, p0, Lcom/appyet/c/a/l;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/a/l;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/appyet/c/a/l;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

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

    iget-object v1, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

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

.method static synthetic b(Lcom/appyet/c/a/l;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/l;->k:Ljava/lang/Long;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "html/forum/forum_template.html"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic c(Lcom/appyet/c/a/l;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/l;->b:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/c/a/l;)I
    .locals 1

    iget v0, p0, Lcom/appyet/c/a/l;->a:I

    return v0
.end method

.method static synthetic e(Lcom/appyet/c/a/l;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/l;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/appyet/c/a/l;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/l;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/appyet/c/a/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/l;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/appyet/c/a/l;->a:I

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/l;->k:Ljava/lang/Long;

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appyet/c/a/l;->a:I

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/a/l;->b:Lcom/appyet/context/ApplicationContext;

    invoke-direct {p0}, Lcom/appyet/c/a/l;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/l;->j:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/l;->l:Lcom/appyet/c/a/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/l;->l:Lcom/appyet/c/a/n;

    invoke-virtual {v0}, Lcom/appyet/c/a/n;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->a:Lcom/appyet/f/h;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/l;->l:Lcom/appyet/c/a/n;

    invoke-virtual {v0}, Lcom/appyet/c/a/n;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->b:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/l;->l:Lcom/appyet/c/a/n;

    invoke-virtual {v0}, Lcom/appyet/c/a/n;->e()Z

    iget-object v0, p0, Lcom/appyet/c/a/l;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/appyet/c/a/l;->a()V

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

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

    iget-object v1, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

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

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "position"

    iget v1, p0, Lcom/appyet/c/a/l;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a00a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/c/a/l;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/c/a/l;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appyet/c/a/l;->a()V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/appyet/c/a/l;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v2, "DARK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const v0, 0x7f0a0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appyet/c/a/l;->f:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/appyet/c/a/m;

    invoke-direct {v2, p0}, Lcom/appyet/c/a/m;-><init>(Lcom/appyet/c/a/l;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    new-instance v3, Lcom/appyet/c/a/p;

    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/MainActivity;

    invoke-direct {v3, p0, v0}, Lcom/appyet/c/a/p;-><init>(Lcom/appyet/c/a/l;Lcom/appyet/activity/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v2, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    new-instance v3, Lcom/appyet/c/a/q;

    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/MainActivity;

    invoke-direct {v3, p0, v0}, Lcom/appyet/c/a/q;-><init>(Lcom/appyet/c/a/l;Lcom/appyet/activity/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/appyet/c/a/o;

    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/appyet/c/a/o;-><init>(Lcom/appyet/c/a/l;Landroid/content/Context;)V

    const-string v3, "AppYet"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v2, p0, Lcom/appyet/c/a/l;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const v0, 0x7f0a0088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appyet/c/a/l;->e:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/appyet/c/a/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/appyet/c/a/l;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/appyet/c/a/n;

    iget-object v2, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v2, v1}, Lcom/appyet/c/a/n;-><init>(Lcom/appyet/c/a/l;Landroid/webkit/WebView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/appyet/c/a/l;->l:Lcom/appyet/c/a/n;

    iget-object v0, p0, Lcom/appyet/c/a/l;->l:Lcom/appyet/c/a/n;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/n;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/c/a/l;->c:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appyet/c/a/l;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
