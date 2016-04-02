.class public Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareTypeAdapter;
.super Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method getBackgroundResource(Ljava/util/ArrayList;I)I
    .locals 1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareTypeAdapter;->getIconResId(I)I

    move-result v0

    return v0
.end method

.method getName(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareTypeAdapter;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
