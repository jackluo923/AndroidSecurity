.class final Lcom/alipay/mobile/security/gesture/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/a;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/a;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b(Ljava/lang/String;)V

    return-void
.end method
