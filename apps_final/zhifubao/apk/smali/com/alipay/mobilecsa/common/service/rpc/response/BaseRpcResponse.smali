.class public Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.super Lcom/alipay/mobilecsa/common/service/facade/model/ToString;
.source "BaseRpcResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
