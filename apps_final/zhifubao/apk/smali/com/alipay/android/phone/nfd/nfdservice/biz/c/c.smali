.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/b;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/b;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setScene(Ljava/lang/String;)V

    return-void
.end method
