.class public Lmobi/monaca/framework/view/MonacaWebView;
.super Lorg/apache/cordova/CordovaWebView;
.source "MonacaWebView.java"


# static fields
.field public static final INITIALIZATION_DESCRIPTION:Ljava/lang/String;

.field public static final INITIALIZATION_ERROR_CODE:I = -0x6

.field public static final INITIALIZATION_MADIATOR:Ljava/lang/String;

.field public static final INITIALIZATION_REQUEST_URL:Ljava/lang/String; = "INITIALIZATION"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected context:Landroid/content/Context;

.field private notBackButton:Z

.field protected page:Lmobi/monaca/framework/MonacaPageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lmobi/monaca/framework/view/MonacaWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/view/MonacaWebView;->TAG:Ljava/lang/String;

    .line 17
    sget v0, Lmobi/monaca/framework/psedo/R$string;->js_scheme:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/view/MonacaWebView;->INITIALIZATION_MADIATOR:Ljava/lang/String;

    .line 18
    sget v0, Lmobi/monaca/framework/psedo/R$string;->cordova_initmessage:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/view/MonacaWebView;->INITIALIZATION_DESCRIPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/CordovaWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/view/MonacaWebView;->notBackButton:Z

    .line 43
    iput-object p1, p0, Lmobi/monaca/framework/view/MonacaWebView;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lmobi/monaca/framework/view/MonacaWebView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/view/MonacaWebView;->notBackButton:Z

    .line 36
    iput-object p1, p0, Lmobi/monaca/framework/view/MonacaWebView;->context:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lmobi/monaca/framework/view/MonacaWebView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/CordovaWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/view/MonacaWebView;->notBackButton:Z

    .line 29
    iput-object p1, p0, Lmobi/monaca/framework/view/MonacaWebView;->context:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lmobi/monaca/framework/view/MonacaWebView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;)V
    .locals 1
    .param p1, "page"    # Lmobi/monaca/framework/MonacaPageActivity;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/view/MonacaWebView;->notBackButton:Z

    .line 49
    iput-object p1, p0, Lmobi/monaca/framework/view/MonacaWebView;->page:Lmobi/monaca/framework/MonacaPageActivity;

    .line 50
    invoke-virtual {p1}, Lmobi/monaca/framework/MonacaPageActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/view/MonacaWebView;->context:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lmobi/monaca/framework/view/MonacaWebView;->init()V

    .line 52
    return-void
.end method


# virtual methods
.method public backHistory()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lmobi/monaca/framework/view/MonacaWebView;->notBackButton:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-super {p0}, Lorg/apache/cordova/CordovaWebView;->backHistory()Z

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/view/MonacaWebView;->notBackButton:Z

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lorg/apache/cordova/CordovaWebView;->goBack()V

    .line 63
    return-void
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lmobi/monaca/framework/view/MonacaWebView;->resumeTimers()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/view/MonacaWebView;->notBackButton:Z

    .line 57
    return-void
.end method

.method public loadUrlIntoView(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "INITIALIZATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lmobi/monaca/framework/view/MonacaWebView;->INITIALIZATION_MADIATOR:Ljava/lang/String;

    invoke-super {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 107
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 67
    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaWebView;->page:Lmobi/monaca/framework/MonacaPageActivity;

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaWebView;->page:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->hasBackButtonEventer()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaWebView;->page:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->hasOnTapBackButtonAction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v2

    .line 74
    :cond_1
    invoke-virtual {p0}, Lmobi/monaca/framework/view/MonacaWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq p1, v3, :cond_3

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lmobi/monaca/framework/view/MonacaWebView;->notBackButton:Z

    .line 75
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 76
    .local v0, "supersReturn":Z
    iput-boolean v2, p0, Lmobi/monaca/framework/view/MonacaWebView;->notBackButton:Z

    move v2, v0

    .line 77
    goto :goto_0

    .line 74
    .end local v0    # "supersReturn":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
