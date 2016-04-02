.class public Lcom/alipay/android/widgets/asset/model/AssetAmountItem;
.super Ljava/lang/Object;
.source "AssetAmountItem.java"


# instance fields
.field private amount:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private widgetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/AssetAmountItem;->widgetId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/alipay/android/widgets/asset/model/AssetAmountItem;->name:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/alipay/android/widgets/asset/model/AssetAmountItem;->amount:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/AssetAmountItem;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/AssetAmountItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/AssetAmountItem;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/AssetAmountItem;->amount:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/AssetAmountItem;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/AssetAmountItem;->widgetId:Ljava/lang/String;

    .line 24
    return-void
.end method
