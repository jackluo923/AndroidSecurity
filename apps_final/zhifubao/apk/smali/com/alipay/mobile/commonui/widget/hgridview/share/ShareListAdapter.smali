.class public Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareListAdapter;
.super Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method getBackgroundResource(Ljava/util/ArrayList;I)I
    .locals 2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/share/ShareItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getResId()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareListAdapter;->getIconResId(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method getName(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/share/ShareItem;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareListAdapter;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
