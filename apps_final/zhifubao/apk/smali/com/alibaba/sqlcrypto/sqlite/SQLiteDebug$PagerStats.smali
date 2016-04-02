.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;
.super Ljava/lang/Object;


# instance fields
.field public databaseBytes:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public dbStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation
.end field

.field public largestMemAlloc:I

.field public memoryUsed:I

.field public numPagers:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public pageCacheOverflo:I

.field public referencedBytes:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public totalBytes:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
