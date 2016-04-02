.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/t;

.field private final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/t;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/u;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/t;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/u;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/u;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/t;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/s;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;)Lcom/alipay/android/phone/nfd/nfdservice/biz/r;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/u;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/r;->a(Ljava/util/Map;)V

    return-void
.end method
