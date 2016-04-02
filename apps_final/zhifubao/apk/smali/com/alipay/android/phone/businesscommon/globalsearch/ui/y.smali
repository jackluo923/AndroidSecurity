.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;
.source "MoreDataFragment_.java"


# instance fields
.field private h:Landroid/view/View;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->i:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Z)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
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
    .line 100
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Ljava/util/List;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/aa;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/aa;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public final b(Ljava/util/List;)V
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
    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->onCreate(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->h:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 48
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->n:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->h:Landroid/view/View;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->h:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->w:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->g:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->C:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->e:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->D:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->v:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->d:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a()V

    .line 57
    return-void
.end method
