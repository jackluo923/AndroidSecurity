.class public Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;
.super Ljava/lang/Object;
.source "VerifyTaobaoSsoTokenReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deviceId:Ljava/lang/String;

.field public externParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public productVersion:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public taobaoNick:Ljava/lang/String;

.field public taobaoSSoToken:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;

.field public tokenSign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
