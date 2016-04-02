.class public Lcom/alipay/mobile/security/gesture/ui/ag;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/view/View;

.field public d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

.field public e:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->a:I

    iput v0, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->b:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/security/gesture/data/ConfigItemData;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "itemData.getName()) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "itemData.getOn())  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->getOn()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->e:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->getOn()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ag;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    goto :goto_0
.end method
