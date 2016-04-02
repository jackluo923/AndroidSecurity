.class public Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;
.super Ljava/lang/Object;
.source "APTaobaoGoodsObject.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;


# instance fields
.field public webpageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x3f2

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    .line 29
    return-void
.end method
