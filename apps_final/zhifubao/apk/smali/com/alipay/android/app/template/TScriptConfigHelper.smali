.class public Lcom/alipay/android/app/template/TScriptConfigHelper;
.super Ljava/lang/Object;
.source "TScriptConfigHelper.java"


# static fields
.field private static a:Lcom/alipay/android/app/template/TScriptConfigHelper;

.field public static sConfigsGroupByClass:Ljava/util/Map;


# instance fields
.field private b:I

.field private c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TScriptConfigHelper;->sConfigsGroupByClass:Ljava/util/Map;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->b:I

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/android/app/template/TScriptConfigHelper;->a:Lcom/alipay/android/app/template/TScriptConfigHelper;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alipay/android/app/template/TScriptConfigHelper;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TScriptConfigHelper;->a:Lcom/alipay/android/app/template/TScriptConfigHelper;

    .line 33
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TScriptConfigHelper;->a:Lcom/alipay/android/app/template/TScriptConfigHelper;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method public getConfigWithMagic(ILjava/lang/String;)Lcom/alipay/android/app/template/TScriptConfig;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0

    .line 114
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/TScriptConfig;

    .line 115
    iget v2, v0, Lcom/alipay/android/app/template/TScriptConfig;->magicInt:I

    if-eq v2, p1, :cond_2

    iget v2, v0, Lcom/alipay/android/app/template/TScriptConfig;->magicInt1:I

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 92
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 93
    new-instance v2, Lcom/alipay/android/app/json/JSONArray;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONArray;-><init>()V

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 99
    :try_start_0
    const-string/jumbo v3, "count"

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v0, "jsname"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "array"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONArray;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_2
    return-object v0

    .line 94
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/TScriptConfig;

    .line 95
    invoke-virtual {v1}, Lcom/alipay/android/app/template/TScriptConfig;->toJsonString()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONArray;->put(Lcom/alipay/android/app/json/JSONObject;)V

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 108
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 6

    .prologue
    .line 65
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 66
    return-void
.end method

.method public putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 46
    :goto_0
    new-instance v1, Lcom/alipay/android/app/template/TScriptConfig;

    invoke-direct {v1}, Lcom/alipay/android/app/template/TScriptConfig;-><init>()V

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/android/app/template/TScriptConfig;->isMethod:Z

    .line 48
    iput-object p2, v1, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    .line 49
    iput-object p3, v1, Lcom/alipay/android/app/template/TScriptConfig;->nativeMethod:Ljava/lang/reflect/Method;

    .line 50
    iget v2, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->b:I

    iput v2, v1, Lcom/alipay/android/app/template/TScriptConfig;->magicInt:I

    .line 51
    iput-boolean p5, v1, Lcom/alipay/android/app/template/TScriptConfig;->needConvertUnit:Z

    .line 53
    iput-object p4, v1, Lcom/alipay/android/app/template/TScriptConfig;->nativeMethod1:Ljava/lang/reflect/Method;

    .line 54
    iget v2, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->b:I

    iput v2, v1, Lcom/alipay/android/app/template/TScriptConfig;->magicInt1:I

    .line 55
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    const-string/jumbo v2, " of js object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been bound once!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method public putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 77
    :goto_0
    new-instance v1, Lcom/alipay/android/app/template/TScriptConfig;

    invoke-direct {v1}, Lcom/alipay/android/app/template/TScriptConfig;-><init>()V

    .line 78
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/android/app/template/TScriptConfig;->isMethod:Z

    .line 79
    iput-object p2, v1, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    .line 80
    iput-object p3, v1, Lcom/alipay/android/app/template/TScriptConfig;->nativeMethod:Ljava/lang/reflect/Method;

    .line 81
    iget v2, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->b:I

    iput v2, v1, Lcom/alipay/android/app/template/TScriptConfig;->magicInt:I

    .line 82
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/android/app/template/TScriptConfig;->jsMethod:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    const-string/jumbo v2, " of js object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been bound once!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/alipay/android/app/template/TScriptConfigHelper;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method
