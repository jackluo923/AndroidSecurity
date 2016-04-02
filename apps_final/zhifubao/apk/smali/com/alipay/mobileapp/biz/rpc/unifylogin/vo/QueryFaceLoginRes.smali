.class public Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;
.super Ljava/lang/Object;
.source "QueryFaceLoginRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/FaceLoginSwitchResult;",
            ">;"
        }
    .end annotation
.end field

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
