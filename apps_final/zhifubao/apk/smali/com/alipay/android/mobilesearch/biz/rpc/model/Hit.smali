.class public Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;
.super Ljava/lang/Object;
.source "Hit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x66437737d4f06d5L


# instance fields
.field public actIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public bizId:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public ext:Ljava/util/Map;
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

.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public templateId:Ljava/lang/String;

.field public templateJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->ext:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->actIcons:Ljava/util/List;

    .line 14
    return-void
.end method
