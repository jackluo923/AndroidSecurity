.class public Lcom/alipay/android/app/script/CallbackParams;
.super Ljava/lang/Object;


# instance fields
.field private mData:Lcom/alipay/android/app/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/script/CallbackParams;->mData:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/script/CallbackParams;->mData:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/script/CallbackParams;->mData:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/script/CallbackParams;->mData:Lcom/alipay/android/app/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/script/CallbackParams;->mData:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
