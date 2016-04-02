.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

.field private final synthetic b:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/b;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/b;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    :cond_0
    return-void
.end method
