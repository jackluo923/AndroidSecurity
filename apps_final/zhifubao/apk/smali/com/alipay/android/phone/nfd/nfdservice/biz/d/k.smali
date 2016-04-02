.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/d/k;
.super Ljava/util/Observable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/k;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyObservers()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/k;->setChanged()V

    invoke-super {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method
