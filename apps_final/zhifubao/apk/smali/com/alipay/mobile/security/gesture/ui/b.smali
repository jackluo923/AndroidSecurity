.class final Lcom/alipay/mobile/security/gesture/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/b;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/gesture/ui/b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/b;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/b;->b:Z

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->c(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/b;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/b;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
