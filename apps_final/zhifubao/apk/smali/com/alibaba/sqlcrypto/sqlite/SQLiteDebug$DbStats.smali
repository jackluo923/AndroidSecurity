.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;
.super Ljava/lang/Object;


# instance fields
.field public dbName:Ljava/lang/String;

.field public dbSize:J

.field public lookaside:I

.field public pageSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 4

    const-wide/16 v2, 0x400

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    div-long v0, p4, v2

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;->pageSize:J

    mul-long v0, p2, p4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;->dbSize:J

    iput p6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;->lookaside:I

    return-void
.end method
