.class public Lcom/alipay/android/app/display/uielement/UIPane;
.super Lcom/alipay/android/app/display/uielement/UIPanel;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UIPanel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/UIPanel;->a()Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method protected final l()I
    .locals 1

    const-string/jumbo v0, "msp_panel_pane"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
