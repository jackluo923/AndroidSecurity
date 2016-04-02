.class public Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;
.super Ljava/lang/Object;
.source "MyAppEntity.java"


# static fields
.field public static final COL_APPDISPLAYPLACE:Ljava/lang/String; = "appDisplayPlace"

.field public static final COL_APPID:Ljava/lang/String; = "appId"

.field public static final COL_USERRANK:Ljava/lang/String; = "userRank"


# instance fields
.field private appDisplayPlace:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        index = true
        unique = true
    .end annotation
.end field

.field private comment:Ljava/lang/String;

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private movable:Z

.field private userRank:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    .line 20
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    .line 21
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->movable:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->comment:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    .line 20
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    .line 21
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->movable:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->comment:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appId:Ljava/lang/String;

    .line 95
    iput p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    .line 96
    iput-wide p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    .line 97
    return-void
.end method


# virtual methods
.method public getAppDisplayPlace()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->id:I

    return v0
.end method

.method public getUserRank()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    return-wide v0
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->movable:Z

    return v0
.end method

.method public setAppDisplayPlace(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    .line 53
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->comment:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->id:I

    .line 41
    return-void
.end method

.method public setMovable(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->movable:Z

    .line 73
    return-void
.end method

.method public setUserRank(J)V
    .locals 0

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    const-string/jumbo v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userRank:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-wide v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->userRank:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 83
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appDisplayPlace:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    iget v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->appDisplayPlace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 86
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
