.class public Lcom/alipay/android/app/template/TScriptConfig;
.super Ljava/lang/Object;
.source "TScriptConfig.java"


# instance fields
.field public isMethod:Z

.field public jsMethod:Ljava/lang/String;

.field public magicInt:I

.field public magicInt1:I

.field public nativeMethod:Ljava/lang/reflect/Method;

.field public nativeMethod1:Ljava/lang/reflect/Method;

.field public needConvertUnit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->magicInt:I

    .line 16
    iput v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->magicInt1:I

    .line 20
    iput-boolean v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->needConvertUnit:Z

    .line 9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    check-cast p1, Lcom/alipay/android/app/template/TScriptConfig;

    .line 61
    iget-boolean v2, p0, Lcom/alipay/android/app/template/TScriptConfig;->isMethod:Z

    iget-boolean v3, p1, Lcom/alipay/android/app/template/TScriptConfig;->isMethod:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget-object v2, p0, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 64
    iget-object v2, p1, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 65
    goto :goto_0

    .line 66
    :cond_5
    iget-object v2, p0, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public getMethodWithMagic(I)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->magicInt:I

    if-ne v0, p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->nativeMethod:Ljava/lang/reflect/Method;

    .line 28
    :goto_0
    return-object v0

    .line 25
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->magicInt1:I

    if-ne v0, p1, :cond_1

    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->nativeMethod1:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->isMethod:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 47
    mul-int/lit8 v1, v0, 0x1f

    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 47
    :goto_1
    add-int/2addr v0, v1

    .line 49
    return v0

    .line 44
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public toJsonString()Lcom/alipay/android/app/json/JSONObject;
    .locals 2

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"jsMethod\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\",\"magicInt\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/template/TScriptConfig;->magicInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    const-string/jumbo v1, ",\"magicInt1\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/template/TScriptConfig;->magicInt1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\"isMethod\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/template/TScriptConfig;->isMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    .line 39
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    goto :goto_0
.end method
