.class Lcom/alipay/mobile/base/security/CheckInject$3;
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
    iput-object p1, p0, Lcom/alipay/mobile/base/security/CheckInject$3;->this$0:Lcom/alipay/mobile/base/security/CheckInject;

    iput-object p2, p0, Lcom/alipay/mobile/base/security/CheckInject$3;->val$activity:Landroid/app/Activity;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject$3;->this$0:Lcom/alipay/mobile/base/security/CheckInject;

    iget-object v1, p0, Lcom/alipay/mobile/base/security/CheckInject$3;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/alipay/mobile/base/security/CheckInject;->exit(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/base/security/CheckInject;->access$1(Lcom/alipay/mobile/base/security/CheckInject;Landroid/app/Activity;)V

    .line 436
    return-void
.end method
