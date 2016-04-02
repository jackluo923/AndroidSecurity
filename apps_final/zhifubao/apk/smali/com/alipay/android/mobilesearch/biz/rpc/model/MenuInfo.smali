.class public Lcom/alipay/android/mobilesearch/biz/rpc/model/MenuInfo;
.super Ljava/lang/Object;
.source "MenuInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3a9d11789ac58bbfL


# instance fields
.field public code:Ljava/lang/String;

.field public count:I

.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public subMenuInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/mobilesearch/biz/rpc/model/MenuInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mobilesearch/biz/rpc/model/MenuInfo;->subMenuInfos:Ljava/util/List;

    .line 12
    return-void
.end method
