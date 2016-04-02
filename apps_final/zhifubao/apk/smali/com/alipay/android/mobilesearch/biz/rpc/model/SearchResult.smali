.class public Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x615e28096b060cd6L


# instance fields
.field public bucketId:Ljava/lang/String;

.field public groupRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;",
            ">;"
        }
    .end annotation
.end field

.field public menuGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/mobilesearch/biz/rpc/model/MenuGroup;",
            ">;"
        }
    .end annotation
.end field

.field public query:Ljava/lang/String;

.field public resultCode:I

.field public resultMsg:Ljava/lang/String;

.field public searchId:Ljava/lang/String;

.field public searchParams:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public sort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->resultCode:I

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->resultMsg:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->groupRecords:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->menuGroups:Ljava/util/List;

    .line 12
    return-void
.end method
