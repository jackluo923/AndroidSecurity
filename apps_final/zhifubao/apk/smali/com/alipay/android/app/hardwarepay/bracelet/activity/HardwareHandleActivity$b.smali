.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->c:I

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_1

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {v1, v0, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;B)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v2, "mini_hardware_item"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "name"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->a:Landroid/widget/TextView;

    const-string/jumbo v0, "tips"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    const-string/jumbo v0, "progress"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->d:Landroid/widget/ProgressBar;

    const-string/jumbo v0, "address"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "mini_block_item_top"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    iget-object v2, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->c:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->c:I

    if-ne v0, p1, :cond_0

    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo v0, "mini_block_item_top"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "mini_block_item_normal"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->b:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v2, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x41

    if-le v2, v3, :cond_6

    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_bluetooth_signal_high"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, -0x50

    if-le v0, v2, :cond_7

    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_bluetooth_signal_middle"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_7
    iget-object v0, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;->c:Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_bluetooth_signal_low"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method
