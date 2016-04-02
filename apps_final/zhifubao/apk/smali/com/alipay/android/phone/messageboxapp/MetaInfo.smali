.class public Lcom/alipay/android/phone/messageboxapp/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 12
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 13
    const-string/jumbo v1, "20000235"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    const-string/jumbo v2, "msgbox"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    .line 14
    const-class v2, Lcom/alipay/android/phone/messageboxapp/MsgboxApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 15
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/messageboxapp/MetaInfo;->addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 17
    return-void
.end method
