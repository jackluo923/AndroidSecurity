.class public Lcom/ta/utdid2/device/Device;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->d:Ljava/lang/String;

    iput-wide v1, p0, Lcom/ta/utdid2/device/Device;->e:J

    iput-wide v1, p0, Lcom/ta/utdid2/device/Device;->f:J

    return-void
.end method


# virtual methods
.method getCheckSum()J
    .locals 2

    iget-wide v0, p0, Lcom/ta/utdid2/device/Device;->f:J

    return-wide v0
.end method

.method getCreateTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/ta/utdid2/device/Device;->e:J

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/device/Device;->d:Ljava/lang/String;

    return-object v0
.end method

.method setCheckSum(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ta/utdid2/device/Device;->f:J

    return-void
.end method

.method setCreateTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ta/utdid2/device/Device;->e:J

    return-void
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->c:Ljava/lang/String;

    return-void
.end method

.method setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->a:Ljava/lang/String;

    return-void
.end method

.method setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->b:Ljava/lang/String;

    return-void
.end method

.method setUtdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ta/utdid2/device/Device;->d:Ljava/lang/String;

    return-void
.end method
