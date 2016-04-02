.class public Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;
.super Ljava/lang/Object;
.source "GroupRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6652d8683eaa395aL


# instance fields
.field public count:I

.field public groupId:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public hasMore:Z

.field public hits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;",
            ">;"
        }
    .end annotation
.end field

.field public moreLinkName:Ljava/lang/String;

.field public moreLinkUrl:Ljava/lang/String;

.field public totalCount:I

.field public traceInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
