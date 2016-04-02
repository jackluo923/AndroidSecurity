.class public final Lcom/alipay/mobile/security/gesture/ui/ae;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/gesture/data/ConfigItemData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->c:Ljava/util/List;

    new-instance v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->d:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->f:Z

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/ae;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/alipay/mobile/security/gesture/ui/ag;->c:Landroid/view/View;

    iput v2, v1, Lcom/alipay/mobile/security/gesture/ui/ag;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/ai;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    sget v4, Lcom/alipay/mobile/a/e;->g:I

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/security/gesture/ui/ai;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/ak;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    sget v4, Lcom/alipay/mobile/a/e;->i:I

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/security/gesture/ui/ak;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/aj;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    sget v4, Lcom/alipay/mobile/a/e;->h:I

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/security/gesture/ui/aj;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/al;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    sget v4, Lcom/alipay/mobile/a/e;->j:I

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/security/gesture/ui/al;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/ae;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/ae;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/ae;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/security/gesture/data/ConfigItemData;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->d:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    return-object v0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/gesture/data/ConfigItemData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/af;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/af;-><init>(Lcom/alipay/mobile/security/gesture/ui/ae;Ljava/util/List;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->b:Z

    return-void
.end method

.method public final getCount()I
    .locals 4

    const/4 v1, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->d:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->b:Z

    if-eqz v2, :cond_3

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x3

    iput-boolean v3, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->f:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->b:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/ae;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->f:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/ae;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(I)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, v6, :cond_5

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/ui/ag;

    iput p1, v0, Lcom/alipay/mobile/security/gesture/ui/ag;->b:I

    if-ne p1, v4, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->d:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    sget v3, Lcom/alipay/mobile/a/f;->s:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->d:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/ag;->a(Lcom/alipay/mobile/security/gesture/data/ConfigItemData;)V

    :cond_2
    if-ne p1, v6, :cond_b

    check-cast v0, Lcom/alipay/mobile/security/gesture/ui/al;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->d:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->getOn()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v4, v1, :cond_a

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    sget v2, Lcom/alipay/mobile/a/f;->u:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/al;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object p2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/ae;->getItemViewType(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/ui/ag;

    iget v0, v0, Lcom/alipay/mobile/security/gesture/ui/ag;->a:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/ui/ag;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_item_bottom_normal_selector:I

    if-ne p1, v4, :cond_8

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_item_bottom_normal_selector:I

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/ae;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_7

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_item_bottom_normal_selector:I

    :cond_7
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/ag;->b(I)V

    goto :goto_1

    :cond_8
    if-ne p1, v5, :cond_9

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_item_bottom_normal_selector:I

    goto :goto_3

    :cond_9
    if-le p1, v5, :cond_6

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_item_top_center_selector:I

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    sget v2, Lcom/alipay/mobile/a/f;->t:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/al;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    if-lt p1, v5, :cond_c

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->b:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/ae;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_d

    iget-object v1, v0, Lcom/alipay/mobile/security/gesture/ui/ag;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b()Lcom/alipay/mobile/security/gesture/ui/u;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobile/security/gesture/ui/ag;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/alipay/mobile/security/gesture/ui/ag;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v3, Lcom/alipay/mobile/security/gesture/ui/ah;

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/ah;-><init>(Lcom/alipay/mobile/security/gesture/ui/ag;Lcom/alipay/mobile/security/gesture/ui/u;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    goto :goto_2

    :cond_d
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->c:Ljava/util/List;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ae;->c:Ljava/util/List;

    add-int/lit8 v2, p1, -0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "before setdata cid name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/ag;->a(Lcom/alipay/mobile/security/gesture/data/ConfigItemData;)V

    goto :goto_4
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
