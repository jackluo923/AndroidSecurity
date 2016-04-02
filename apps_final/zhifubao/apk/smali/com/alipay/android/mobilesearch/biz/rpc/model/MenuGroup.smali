.class public Lcom/alipay/android/mobilesearch/biz/rpc/model/MenuGroup;
.super Ljava/lang/Object;
.source "MenuGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x319198d9395c552L


# instance fields
.field public code:Ljava/lang/String;

.field public menuInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/mobilesearch/biz/rpc/model/MenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mobilesearch/biz/rpc/model/MenuGroup;->menuInfos:Ljava/util/List;

    .line 11
    return-void
.end method
