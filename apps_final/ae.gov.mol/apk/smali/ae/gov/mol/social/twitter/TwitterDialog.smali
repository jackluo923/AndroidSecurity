.class public Lae/gov/mol/social/twitter/TwitterDialog;
.super Landroid/app/Dialog;
.source "TwitterDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;
    }
.end annotation


# static fields
.field static final DIMENSIONS_LANDSCAPE:[F

.field static final DIMENSIONS_PORTRAIT:[F

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams;

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private final mListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private final mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private progressDialogRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 25
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lae/gov/mol/social/twitter/TwitterDialog;->DIMENSIONS_LANDSCAPE:[F

    .line 26
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lae/gov/mol/social/twitter/TwitterDialog;->DIMENSIONS_PORTRAIT:[F

    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lae/gov/mol/social/twitter/TwitterDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    return-void

    .line 25
    :array_0
    .array-data 4
        0x43e60000    # 460.0f
        0x43820000    # 260.0f
    .end array-data

    .line 26
    :array_1
    .array-data 4
        0x438c0000    # 280.0f
        0x43d20000    # 420.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->progressDialogRunning:Z

    .line 44
    iput-object p2, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mUrl:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/social/twitter/TwitterDialog;)Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/social/twitter/TwitterDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/social/twitter/TwitterDialog;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lae/gov/mol/social/twitter/TwitterDialog;->progressDialogRunning:Z

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/social/twitter/TwitterDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/social/twitter/TwitterDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private setUpTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lae/gov/mol/social/twitter/TwitterDialog;->requestWindowFeature(I)Z

    .line 77
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09024e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    const v1, -0x442817

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 83
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 84
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 86
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method private setUpWebView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 91
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    .line 93
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 94
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 95
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;-><init>(Lae/gov/mol/social/twitter/TwitterDialog;Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 97
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lae/gov/mol/social/twitter/TwitterDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->progressDialogRunning:Z

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->dismiss()V

    .line 158
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 53
    iget-object v3, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 54
    iget-object v3, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09007d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    .line 58
    iget-object v3, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    invoke-direct {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->setUpTitle()V

    .line 61
    invoke-direct {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->setUpWebView()V

    .line 63
    invoke-virtual {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 64
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lae/gov/mol/social/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 66
    .local v2, "scale":F
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    sget-object v0, Lae/gov/mol/social/twitter/TwitterDialog;->DIMENSIONS_PORTRAIT:[F

    .line 69
    .local v0, "dimensions":[F
    :goto_0
    iget-object v3, p0, Lae/gov/mol/social/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    const/4 v5, 0x0

    aget v5, v0, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    aget v6, v0, v6

    .line 71
    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {p0, v3, v4}, Lae/gov/mol/social/twitter/TwitterDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void

    .line 67
    .end local v0    # "dimensions":[F
    :cond_0
    sget-object v0, Lae/gov/mol/social/twitter/TwitterDialog;->DIMENSIONS_LANDSCAPE:[F

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/social/twitter/TwitterDialog;->progressDialogRunning:Z

    .line 150
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 151
    return-void
.end method
