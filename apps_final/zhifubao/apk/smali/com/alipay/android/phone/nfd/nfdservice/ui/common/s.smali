.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

.field private final synthetic b:Landroid/net/wifi/WifiInfo;

.field private final synthetic c:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/s;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/s;->b:Landroid/net/wifi/WifiInfo;

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/s;->c:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/s;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/s;->b:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/s;->c:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method
