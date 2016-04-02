.class final Lcom/alipay/mobile/security/gesture/ui/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bs;->c:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/gesture/ui/bs;->a:Z

    iput-boolean p3, p0, Lcom/alipay/mobile/security/gesture/ui/bs;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bs;->c:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/bs;->a:Z

    iget-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/bs;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;ZZ)V

    return-void
.end method
