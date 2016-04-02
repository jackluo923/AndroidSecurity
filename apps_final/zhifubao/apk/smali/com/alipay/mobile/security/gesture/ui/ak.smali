.class public final Lcom/alipay/mobile/security/gesture/ui/ak;
.super Lcom/alipay/mobile/security/gesture/ui/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/ag;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/alipay/mobile/a/d;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/ak;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ak;->d:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    return-void
.end method
