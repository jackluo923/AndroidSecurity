.class public Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;
.super Ljava/lang/Object;
.source "MrpDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ext:Ljava/util/Map;
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

.field public templateId:Ljava/lang/String;

.field public templateJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
