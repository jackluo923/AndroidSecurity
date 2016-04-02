.class public final Lcom/alipay/mobile/security/gesture/ui/al;
.super Lcom/alipay/mobile/security/gesture/ui/ag;


# instance fields
.field public f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/ag;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/alipay/mobile/a/d;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/al;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/al;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/al;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
