.class Lcom/alipay/mobile/base/security/CheckInject$4;
.super Ljava/lang/Object;
.source "CheckInject.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/security/CheckInject;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/security/CheckInject;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/security/CheckInject$4;->this$0:Lcom/alipay/mobile/base/security/CheckInject;

    iput-object p2, p0, Lcom/alipay/mobile/base/security/CheckInject$4;->val$activity:Landroid/app/Activity;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "https://qd.alibaba.com/zt/alipayxposed/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 442
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/alipay/mobile/base/security/CheckInject$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject$4;->this$0:Lcom/alipay/mobile/base/security/CheckInject;

    iget-object v1, p0, Lcom/alipay/mobile/base/security/CheckInject$4;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/alipay/mobile/base/security/CheckInject;->exit(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/base/security/CheckInject;->access$1(Lcom/alipay/mobile/base/security/CheckInject;Landroid/app/Activity;)V

    .line 445
    return-void
.end method
