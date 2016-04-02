.class public Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;
.super Ljava/lang/Object;
.source "FastLoginAppEntity.java"


# static fields
.field public static final COL_APPID:Ljava/lang/String; = "appId"


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
        unique = true
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;->id:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;->appId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;->id:I

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
