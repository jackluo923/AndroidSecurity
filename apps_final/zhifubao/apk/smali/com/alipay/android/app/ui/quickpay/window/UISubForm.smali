.class public Lcom/alipay/android/app/ui/quickpay/window/UISubForm;
.super Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;


# instance fields
.field private F:Landroid/app/Activity;

.field private G:Landroid/view/View;

.field private H:Z

.field private I:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->H:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->G:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->I:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->G:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->F:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->H:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->H:Z

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->F:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->G:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->F:Landroid/app/Activity;

    const-string/jumbo v1, "mini_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/bc;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/window/bc;-><init>(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->a(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->I:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    return-void
.end method

.method protected final a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Back:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->dispose()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final b(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->dispose()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->H:Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->F:Landroid/app/Activity;

    const-string/jumbo v1, "mini_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/bd;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/bd;-><init>(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->b(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V

    return-void
.end method

.method protected final t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
