.class public Lcom/inmobi/commons/uid/AdvertisingId;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/uid/AdvertisingId;->a:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/commons/uid/AdvertisingId;->b:Z

    return-void
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/uid/AdvertisingId;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/AdvertisingId;->b:Z

    return v0
.end method
