.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;
.source "MoreChatMessageActivity_.java"


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->d:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->b:Landroid/widget/ListView;

    .line 43
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 44
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->K:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 45
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->a()V

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->setContentView(I)V

    .line 36
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->onBackPressed()V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->b()V

    .line 52
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->setContentView(Landroid/view/View;)V

    .line 63
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->b()V

    .line 64
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->b()V

    .line 58
    return-void
.end method
