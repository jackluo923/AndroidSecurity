.class public Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;
.super Ljava/lang/Object;
.source "FoodCategorySyncData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private anonymous:Z

.field private avatarUrl:Ljava/lang/String;

.field private timestamp:J

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;->timestamp:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;->anonymous:Z

    return v0
.end method

.method public setAnonymous(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;->anonymous:Z

    .line 44
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;->avatarUrl:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;->timestamp:J

    .line 36
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;->userId:Ljava/lang/String;

    .line 20
    return-void
.end method
