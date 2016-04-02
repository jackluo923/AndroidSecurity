.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/q;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/q;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->c(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;->a()V

    return-void
.end method
