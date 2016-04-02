.class public Lcom/alipay/publiccore/client/req/ComplainReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "ComplainReq.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5a7f9604b3641c55L


# instance fields
.field public complainType:Ljava/lang/String;

.field public logonId:Ljava/lang/String;

.field public msgInfo:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public userComplainInfo:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
