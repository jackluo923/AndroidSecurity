.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;
.source "MainSearchFragment_.java"


# instance fields
.field private n:Landroid/view/View;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->o:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->n:Landroid/view/View;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->b(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public final b(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/p;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/p;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->n:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->n:Landroid/view/View;

    if-nez v0, :cond_0

    .line 57
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->h:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->n:Landroid/view/View;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->n:Landroid/view/View;

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->m:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->l:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->w:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->j:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->D:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->k:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->y:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->f:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->C:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->e:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->n:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->g:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->v:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->d:Landroid/widget/ListView;

    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->j:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a()V

    .line 66
    return-void
.end method
