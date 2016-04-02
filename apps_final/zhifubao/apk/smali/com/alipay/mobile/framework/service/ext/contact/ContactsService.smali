.class public abstract Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "ContactsService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdditionalOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/AdditionalOperationCallback;
.end method

.method public abstract getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;
.end method

.method public abstract pickFromContactsList(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract queryAccountProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract selectAccountAndGo(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract selectContactAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;Lcom/alipay/mobile/framework/service/ext/contact/AdditionalOperationCallback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setResultAccount(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
.end method

.method public abstract setResultAccountList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startQuery(Ljava/lang/String;ZZLcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V
.end method
