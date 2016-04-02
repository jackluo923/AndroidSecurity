.class public Lcom/alipay/android/app/template/TScriptable$JavaInvoker;
.super Ljava/lang/Object;
.source "TScriptable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke_java_method(ILcom/alipay/android/app/template/TScriptable;[Ljava/lang/Object;)Lcom/alipay/android/app/template/TNativeResult;
    .locals 10

    .prologue
    .line 20
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v0

    .line 22
    invoke-interface {p1}, Lcom/alipay/android/app/template/TScriptable;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getConfigWithMagic(ILjava/lang/String;)Lcom/alipay/android/app/template/TScriptConfig;

    move-result-object v3

    .line 23
    new-instance v1, Lcom/alipay/android/app/template/TNativeResult;

    invoke-direct {v1}, Lcom/alipay/android/app/template/TNativeResult;-><init>()V

    .line 24
    if-nez v3, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unsupport method magic = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", jsobjname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/alipay/android/app/template/TScriptable;->getJsObjName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    invoke-virtual {v3, p0}, Lcom/alipay/android/app/template/TScriptConfig;->getMethodWithMagic(I)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 28
    if-eqz v4, :cond_13

    .line 29
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 30
    if-eqz p2, :cond_13

    if-eqz v5, :cond_13

    .line 31
    array-length v0, p2

    .line 32
    array-length v6, v5

    .line 33
    mul-int/lit8 v2, v6, 0x2

    if-lt v0, v2, :cond_13

    .line 34
    new-array v7, v6, [Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v6, :cond_3

    .line 72
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 75
    const-class v0, [Lcom/alipay/android/app/template/view/widget/TElement;

    if-ne v2, v0, :cond_11

    .line 77
    invoke-virtual {v4, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 76
    iput-object v0, v1, Lcom/alipay/android/app/template/TNativeResult;->valueInArray:[Ljava/lang/Object;

    move-object v0, v2

    .line 87
    :goto_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    .line 88
    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_14

    .line 89
    :cond_1
    const/4 v0, 0x0

    iput v0, v1, Lcom/alipay/android/app/template/TNativeResult;->type:I

    .line 106
    :goto_2
    iget-object v0, v1, Lcom/alipay/android/app/template/TNativeResult;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/alipay/android/app/template/TNativeResult;->valueInArray:[Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 107
    const/4 v0, 0x6

    iput v0, v1, Lcom/alipay/android/app/template/TNativeResult;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    .line 120
    :goto_3
    return-object v0

    .line 36
    :cond_3
    aget-object v8, v5, v2

    .line 38
    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    iget-boolean v9, v3, Lcom/alipay/android/app/template/TScriptConfig;->needConvertUnit:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x2

    if-ne v0, v9, :cond_6

    .line 40
    mul-int/lit8 v8, v2, 0x2

    aget-object v8, p2, v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 41
    const/4 v9, 0x2

    if-ne v0, v9, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-static {v8, v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    .line 35
    :cond_4
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 41
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 42
    :cond_6
    const/4 v9, 0x1

    if-ne v0, v9, :cond_8

    .line 43
    const-class v0, Ljava/lang/String;

    if-ne v8, v0, :cond_7

    .line 44
    mul-int/lit8 v0, v2, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v2

    goto :goto_5

    .line 46
    :cond_7
    mul-int/lit8 v0, v2, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v2

    goto :goto_5

    .line 49
    :cond_8
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v0, :cond_9

    const-class v0, Ljava/lang/Integer;

    if-ne v8, v0, :cond_a

    .line 51
    :cond_9
    mul-int/lit8 v0, v2, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    .line 66
    :goto_6
    iget-boolean v0, v3, Lcom/alipay/android/app/template/TScriptConfig;->needConvertUnit:Z

    if-eqz v0, :cond_4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "px"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    goto :goto_5

    .line 52
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v8, v0, :cond_b

    .line 53
    const-class v0, Ljava/lang/Boolean;

    if-ne v8, v0, :cond_c

    .line 55
    :cond_b
    mul-int/lit8 v0, v2, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 54
    aput-object v0, v7, v2

    goto :goto_6

    .line 56
    :cond_c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v8, v0, :cond_d

    .line 57
    const-class v0, Ljava/lang/Double;

    if-ne v8, v0, :cond_e

    .line 59
    :cond_d
    mul-int/lit8 v0, v2, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 58
    aput-object v0, v7, v2

    goto :goto_6

    .line 60
    :cond_e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v8, v0, :cond_f

    const-class v0, Ljava/lang/Float;

    if-ne v8, v0, :cond_10

    .line 62
    :cond_f
    mul-int/lit8 v0, v2, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 61
    aput-object v0, v7, v2

    goto :goto_6

    .line 64
    :cond_10
    mul-int/lit8 v0, v2, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v8, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v2

    goto :goto_6

    .line 79
    :cond_11
    :try_start_1
    invoke-virtual {v4, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/template/TNativeResult;->value:Ljava/lang/Object;

    .line 82
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_12

    const-class v0, Ljava/lang/Float;

    if-ne v2, v0, :cond_1c

    .line 83
    :cond_12
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/alipay/android/app/template/TNativeResult;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/template/TNativeResult;->value:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 111
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :cond_13
    const/4 v0, 0x6

    iput v0, v1, Lcom/alipay/android/app/template/TNativeResult;->type:I

    move-object v0, v1

    .line 120
    goto/16 :goto_3

    .line 90
    :cond_14
    :try_start_2
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_15

    .line 91
    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_16

    .line 92
    :cond_15
    const/4 v0, 0x4

    iput v0, v1, Lcom/alipay/android/app/template/TNativeResult;->type:I

    goto/16 :goto_2

    .line 93
    :cond_16
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_17

    .line 94
    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_18

    .line 95
    :cond_17
    const/4 v0, 0x1

    iput v0, v1, Lcom/alipay/android/app/template/TNativeResult;->type:I

    goto/16 :goto_2

    .line 96
    :cond_18
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_19

    .line 97
    const/4 v0, 0x2

    iput v0, v1, Lcom/alipay/android/app/template/TNativeResult;->type:I

    goto/16 :goto_2

    .line 98
    :cond_19
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1a

    .line 99
    const/4 v0, 0x7

    iput v0, v1, Lcom/alipay/android/app/template/TNativeResult;->type:I

    goto/16 :goto_2

    .line 100
    :cond_1a
    const-class v2, [Lcom/alipay/android/app/template/view/widget/TElement;

    if-ne v0, v2, :cond_1b

    .line 101
    const/16 v0, 0x8

    iput v0, v1, Lcom/alipay/android/app/template/TNativeResult;->type:I

    goto/16 :goto_2

    .line 103
    :cond_1b
    const/4 v0, 0x3

    iput v0, v1, Lcom/alipay/android/app/template/TNativeResult;->type:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_1c
    move-object v0, v2

    goto/16 :goto_1
.end method
