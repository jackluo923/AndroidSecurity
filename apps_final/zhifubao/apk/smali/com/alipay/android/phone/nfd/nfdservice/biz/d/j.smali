.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->c()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
