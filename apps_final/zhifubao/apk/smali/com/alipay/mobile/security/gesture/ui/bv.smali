.class final Lcom/alipay/mobile/security/gesture/ui/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bv;->b:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/bv;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bv;->b:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bv;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;)V

    return-void
.end method
