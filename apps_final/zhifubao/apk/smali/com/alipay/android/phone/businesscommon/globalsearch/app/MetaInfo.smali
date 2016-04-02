.class public Lcom/alipay/android/phone/businesscommon/globalsearch/app/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 12
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 13
    const-string/jumbo v1, "GlobalSearch"

    .line 14
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 15
    const-string/jumbo v2, "com.alipay.android.phone.businesscommon.globalsearch.app.GlobalSearchApp"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 16
    const-string/jumbo v2, "20001003"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 17
    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/app/MetaInfo;->setEntry(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/app/MetaInfo;->addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 19
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 21
    const-class v1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 22
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 25
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/app/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 26
    return-void
.end method
