.class final Lcom/alipay/mobile/security/gesture/ui/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/ag;

.field private final synthetic b:Lcom/alipay/mobile/security/gesture/ui/u;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/ag;Lcom/alipay/mobile/security/gesture/ui/u;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ah;->a:Lcom/alipay/mobile/security/gesture/ui/ag;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/ah;->b:Lcom/alipay/mobile/security/gesture/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchListener(ZLandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ah;->b:Lcom/alipay/mobile/security/gesture/ui/u;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ah;->b:Lcom/alipay/mobile/security/gesture/ui/u;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ah;->a:Lcom/alipay/mobile/security/gesture/ui/ag;

    iget v1, v1, Lcom/alipay/mobile/security/gesture/ui/ag;->b:I

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/ah;->a:Lcom/alipay/mobile/security/gesture/ui/ag;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/ui/ag;->e:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/u;->a(ZILcom/alipay/mobile/security/gesture/data/ConfigItemData;)V

    goto :goto_0
.end method
