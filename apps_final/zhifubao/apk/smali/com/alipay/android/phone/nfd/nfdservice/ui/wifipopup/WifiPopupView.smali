.class public Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "WifiPopupView"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 4

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->storeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7531"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u63d0\u4f9b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->signalLevel:I

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->e:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->e:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->e:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->e:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->e:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
