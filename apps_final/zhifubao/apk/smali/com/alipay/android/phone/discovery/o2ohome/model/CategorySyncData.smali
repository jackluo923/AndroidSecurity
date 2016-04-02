.class public Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;
.super Ljava/lang/Object;
.source "CategorySyncData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bizData:Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;

.field private categoryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizData()Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;->bizData:Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public setBizData(Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;->bizData:Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;

    .line 28
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;->categoryId:Ljava/lang/String;

    .line 20
    return-void
.end method
