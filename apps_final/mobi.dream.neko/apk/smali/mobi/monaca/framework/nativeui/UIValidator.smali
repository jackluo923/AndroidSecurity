.class public Lmobi/monaca/framework/nativeui/UIValidator;
.super Ljava/lang/Object;
.source "UIValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "componentJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/ConversionException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p4, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "backgroundColorString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lmobi/monaca/framework/nativeui/UIUtil;->buildColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 54
    .local v0, "backgroundColor":I
    return v0

    .line 55
    .end local v0    # "backgroundColor":I
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_color:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, p2, v1, v4}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public static parseAndValidateFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;FF)F
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "componentJSON"    # Lorg/json/JSONObject;
    .param p5, "min"    # F
    .param p6, "max"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;,
            Lmobi/monaca/framework/nativeui/exception/ConversionException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v1, p3

    .line 63
    .local v1, "floatString":Ljava/lang/String;
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 69
    .local v2, "floatValue":F
    cmpg-float v3, v2, p5

    if-ltz v3, :cond_1

    cmpl-float v3, v2, p6

    if-lez v3, :cond_2

    .line 70
    :cond_1
    new-instance v3, Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_bracket_left:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_dash:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_bracket_right:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, p2, v1, v4}, Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v2    # "floatValue":F
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_float:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, p2, v1, v4}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 75
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "floatValue":F
    :cond_2
    return v2
.end method

.method public static parseAndValidateInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;II)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "componentJSON"    # Lorg/json/JSONObject;
    .param p5, "min"    # I
    .param p6, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;,
            Lmobi/monaca/framework/nativeui/exception/ConversionException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v2, p3

    .line 83
    .local v2, "integerString":Ljava/lang/String;
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "intValue":I
    if-lt v1, p5, :cond_1

    if-le v1, p6, :cond_2

    .line 90
    :cond_1
    new-instance v3, Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_bracket_left:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_dash:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_bracket_right:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, p2, v2, v4}, Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "intValue":I
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_integer:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, p2, v2, v4}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "intValue":I
    :cond_2
    return v1
.end method

.method public static reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Lmobi/monaca/framework/nativeui/exception/NativeUIException;

    .prologue
    .line 44
    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/exception/NativeUIException;->printStackTrace()V

    .line 45
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_report_exception_prefix:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/exception/NativeUIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    invoke-static {p0, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 48
    return-void
.end method

.method public static validateKey(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "componentJSON"    # Lorg/json/JSONObject;
    .param p3, "validKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 27
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 28
    const/4 v4, 0x0

    .line 29
    .local v4, "valid":Z
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    .local v3, "userSpecifiedKey":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p3

    if-ge v1, v6, :cond_2

    .line 31
    aget-object v5, p3, v1

    .line 32
    .local v5, "validKey":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 33
    const/4 v4, 0x1

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v5    # "validKey":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_0

    .line 37
    new-instance v0, Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;

    invoke-direct {v0, p1, v3, p3}, Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    .local v0, "exception":Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;
    throw v0

    .line 41
    .end local v0    # "exception":Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;
    .end local v1    # "i":I
    .end local v3    # "userSpecifiedKey":Ljava/lang/String;
    .end local v4    # "valid":Z
    :cond_3
    return-void
.end method
