.class public abstract Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "MsgboxInfoService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteMsgByIdList(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteMsgByType(Ljava/lang/String;)I
.end method

.method public abstract queryInitMsgByType(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMsgByType(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryReadMsgByType(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readMsgById(Ljava/lang/String;)I
.end method

.method public abstract readMsgByType(Ljava/lang/String;)I
.end method
