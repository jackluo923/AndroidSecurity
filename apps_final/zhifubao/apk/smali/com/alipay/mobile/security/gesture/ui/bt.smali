.class final Lcom/alipay/mobile/security/gesture/ui/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bt;->d:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/bt;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/security/gesture/ui/bt;->b:Z

    iput-boolean p4, p0, Lcom/alipay/mobile/security/gesture/ui/bt;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bt;->d:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bt;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/bt;->b:Z

    iget-boolean v3, p0, Lcom/alipay/mobile/security/gesture/ui/bt;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;ZZ)V

    return-void
.end method
