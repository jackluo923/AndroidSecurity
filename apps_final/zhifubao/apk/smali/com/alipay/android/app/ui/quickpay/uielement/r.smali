.class final Lcom/alipay/android/app/ui/quickpay/uielement/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/r;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/r;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "country"

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/r;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "areaCode"

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/r;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/r;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-virtual {v0, p0, v4}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
