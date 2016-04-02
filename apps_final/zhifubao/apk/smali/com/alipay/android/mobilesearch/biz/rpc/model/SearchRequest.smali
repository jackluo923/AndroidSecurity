.class public Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;
.super Ljava/lang/Object;
.source "SearchRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6ad30789d298575fL


# instance fields
.field public actionSrc:Ljava/lang/String;

.field public birdParams:Ljava/lang/String;

.field public clientOs:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

.field public currentCity:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public groupIn:Ljava/lang/String;

.field public groupOut:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public queryIndex:Ljava/lang/String;

.field public searchId:Ljava/lang/String;

.field public searchParams:Ljava/lang/String;

.field public searchSrc:Ljava/lang/String;

.field public selectedMenus:Ljava/util/Map;
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

.field public sessionId:Ljava/lang/String;

.field public size:I

.field public start:I

.field public trace:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->selectedMenus:Ljava/util/Map;

    .line 12
    return-void
.end method
