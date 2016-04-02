.class final Lcom/alipay/android/app/ui/quickpay/uielement/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/g;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/g;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    goto :goto_0
.end method
