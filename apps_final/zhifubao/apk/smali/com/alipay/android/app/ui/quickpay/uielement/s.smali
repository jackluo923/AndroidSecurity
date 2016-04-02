.class final Lcom/alipay/android/app/ui/quickpay/uielement/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/s;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/s;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/s;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/s;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
