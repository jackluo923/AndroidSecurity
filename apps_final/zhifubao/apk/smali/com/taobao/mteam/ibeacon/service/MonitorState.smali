.class public Lcom/taobao/mteam/ibeacon/service/MonitorState;
.super Ljava/lang/Object;


# static fields
.field public static a:J


# instance fields
.field private b:Z

.field private c:J

.field private d:Lcom/taobao/mteam/ibeacon/service/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/taobao/mteam/ibeacon/service/Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->c:J

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->d:Lcom/taobao/mteam/ibeacon/service/Callback;

    return-void
.end method


# virtual methods
.method public final a()Lcom/taobao/mteam/ibeacon/service/Callback;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->d:Lcom/taobao/mteam/ibeacon/service/Callback;

    return-object v0
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->c:J

    iget-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->b:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->b:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->b:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->c:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->c:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/taobao/mteam/ibeacon/service/MonitorState;->a:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iput-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->b:Z

    const-string/jumbo v0, "MonitorState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "We are newly outside the region because the lastSeenTime of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seconds ago, and that is over the expiration duration of  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/taobao/mteam/ibeacon/service/MonitorState;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v6, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->c:J

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/MonitorState;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/service/MonitorState;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
