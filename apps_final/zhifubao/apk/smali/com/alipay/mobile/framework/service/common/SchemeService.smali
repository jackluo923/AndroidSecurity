.class public abstract Lcom/alipay/mobile/framework/service/common/SchemeService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "SchemeService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cleanTagId()V
.end method

.method public abstract extractTagId(Landroid/net/Uri;)V
.end method

.method public abstract getAppId(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract getLastScheme()Ljava/lang/String;
.end method

.method public abstract getLastTagId()Ljava/lang/String;
.end method

.method public abstract getTagByAppId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isSchemeInvoke()Z
.end method

.method public abstract process(Landroid/net/Uri;)I
.end method

.method public abstract setExternData(Landroid/os/Bundle;)V
.end method
