.class public Lcom/inmobi/androidsdk/carb/CarbInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getInmId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CarbInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CarbInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setInmId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CarbInfo;->b:Ljava/lang/String;

    return-void
.end method
