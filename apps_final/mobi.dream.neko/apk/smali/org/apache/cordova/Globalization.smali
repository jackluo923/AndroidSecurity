.class public Lorg/apache/cordova/Globalization;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Globalization.java"


# static fields
.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final CURRENCYCODE:Ljava/lang/String; = "currencyCode"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DATESTRING:Ljava/lang/String; = "dateString"

.field public static final DATETOSTRING:Ljava/lang/String; = "dateToString"

.field public static final DAYS:Ljava/lang/String; = "days"

.field public static final FORMATLENGTH:Ljava/lang/String; = "formatLength"

.field public static final FULL:Ljava/lang/String; = "full"

.field public static final GETCURRENCYPATTERN:Ljava/lang/String; = "getCurrencyPattern"

.field public static final GETDATENAMES:Ljava/lang/String; = "getDateNames"

.field public static final GETDATEPATTERN:Ljava/lang/String; = "getDatePattern"

.field public static final GETFIRSTDAYOFWEEK:Ljava/lang/String; = "getFirstDayOfWeek"

.field public static final GETLOCALENAME:Ljava/lang/String; = "getLocaleName"

.field public static final GETNUMBERPATTERN:Ljava/lang/String; = "getNumberPattern"

.field public static final GETPREFERREDLANGUAGE:Ljava/lang/String; = "getPreferredLanguage"

.field public static final ISDAYLIGHTSAVINGSTIME:Ljava/lang/String; = "isDayLightSavingsTime"

.field public static final ITEM:Ljava/lang/String; = "item"

.field public static final LONG:Ljava/lang/String; = "long"

.field public static final MEDIUM:Ljava/lang/String; = "medium"

.field public static final MONTHS:Ljava/lang/String; = "months"

.field public static final NARROW:Ljava/lang/String; = "narrow"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBERSTRING:Ljava/lang/String; = "numberString"

.field public static final NUMBERTOSTRING:Ljava/lang/String; = "numberToString"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final PERCENT:Ljava/lang/String; = "percent"

.field public static final SELECTOR:Ljava/lang/String; = "selector"

.field public static final STRINGTODATE:Ljava/lang/String; = "stringToDate"

.field public static final STRINGTONUMBER:Ljava/lang/String; = "stringToNumber"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final WIDE:Ljava/lang/String; = "wide"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method private getCurrencyPattern(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 528
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 531
    .local v4, "obj":Lorg/json/JSONObject;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "currencyCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "code":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/DecimalFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    check-cast v2, Ljava/text/DecimalFormat;

    .line 537
    .local v2, "fmt":Ljava/text/DecimalFormat;
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    .line 538
    .local v1, "currency":Ljava/util/Currency;
    invoke-virtual {v2, v1}, Ljava/text/DecimalFormat;->setCurrency(Ljava/util/Currency;)V

    .line 541
    const-string v5, "pattern"

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string v5, "code"

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    const-string v5, "fraction"

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 544
    const-string v5, "rounding"

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string v5, "decimal"

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string v5, "grouping"

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    return-object v4

    .line 549
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "currency":Ljava/util/Currency;
    .end local v2    # "fmt":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v3

    .line 550
    .local v3, "ge":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/cordova/GlobalizationError;

    const-string v6, "FORMATTING_ERROR"

    invoke-direct {v5, v6}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getDateNames(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 17
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .local v9, "obj":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 319
    .local v12, "value":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v7, "namesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 323
    .local v11, "type":I
    const/4 v4, 0x0

    .line 326
    .local v4, "item":I
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 328
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "options"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    const-string v14, "type"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 329
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "options"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    const-string v14, "type"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 330
    .local v10, "t":Ljava/lang/String;
    const-string v13, "narrow"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    add-int/lit8 v11, v11, 0x1

    .line 333
    .end local v10    # "t":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "options"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    const-string v14, "item"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 334
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "options"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    const-string v14, "item"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 335
    .restart local v10    # "t":Ljava/lang/String;
    const-string v13, "days"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v4, v4, 0xa

    .line 339
    .end local v10    # "t":Ljava/lang/String;
    :cond_1
    add-int v5, v4, v11

    .line 340
    .local v5, "method":I
    const/4 v13, 0x1

    if-ne v5, v13, :cond_2

    .line 341
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 351
    .local v8, "namesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 352
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 369
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "method":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "namesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 370
    .local v1, "ge":Ljava/lang/Exception;
    new-instance v13, Lorg/apache/cordova/GlobalizationError;

    const-string v14, "UNKNOWN_ERROR"

    invoke-direct {v13, v14}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v13

    .line 342
    .end local v1    # "ge":Ljava/lang/Exception;
    .restart local v5    # "method":I
    :cond_2
    const/16 v13, 0xa

    if-ne v5, v13, :cond_3

    .line 343
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x7

    const/4 v15, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .restart local v8    # "namesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 344
    .end local v8    # "namesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    const/16 v13, 0xb

    if-ne v5, v13, :cond_4

    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x7

    const/4 v15, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .restart local v8    # "namesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 347
    .end local v8    # "namesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .restart local v8    # "namesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 356
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v13, Lorg/apache/cordova/Globalization$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8}, Lorg/apache/cordova/Globalization$1;-><init>(Lorg/apache/cordova/Globalization;Ljava/util/Map;)V

    invoke-static {v7, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 363
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_6

    .line 364
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 368
    :cond_6
    const-string v13, "value"

    invoke-virtual {v9, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    return-object v13
.end method

.method private getDatePattern(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 13
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 257
    .local v6, "obj":Lorg/json/JSONObject;
    :try_start_0
    iget-object v10, p0, Lorg/apache/cordova/Globalization;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 258
    .local v1, "fmtDate":Ljava/text/SimpleDateFormat;
    iget-object v10, p0, Lorg/apache/cordova/Globalization;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 260
    .local v3, "fmtTime":Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "fmt":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "options"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    .line 264
    .local v8, "test":Z
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "options"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 266
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "options"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 268
    .local v5, "innerOptions":Lorg/json/JSONObject;
    const-string v10, "formatLength"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 269
    const-string v10, "formatLength"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "fmtOpt":Ljava/lang/String;
    const-string v10, "medium"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 271
    iget-object v10, p0, Lorg/apache/cordova/Globalization;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "fmtDate":Ljava/text/SimpleDateFormat;
    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 278
    .end local v2    # "fmtOpt":Ljava/lang/String;
    .restart local v1    # "fmtDate":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v10, "selector"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 280
    const-string v10, "selector"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "selOpt":Ljava/lang/String;
    const-string v10, "date"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 282
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    .line 291
    .end local v5    # "innerOptions":Lorg/json/JSONObject;
    .end local v7    # "selOpt":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 293
    .local v9, "tz":Ljava/util/TimeZone;
    const-string v10, "pattern"

    invoke-virtual {v6, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v10, "timezone"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v10, "utc_offset"

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    const-string v10, "dst_offset"

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 297
    return-object v6

    .line 272
    .end local v9    # "tz":Ljava/util/TimeZone;
    .restart local v2    # "fmtOpt":Ljava/lang/String;
    .restart local v5    # "innerOptions":Lorg/json/JSONObject;
    :cond_2
    const-string v10, "long"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "full"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 273
    :cond_3
    iget-object v10, p0, Lorg/apache/cordova/Globalization;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "fmtDate":Ljava/text/SimpleDateFormat;
    check-cast v1, Ljava/text/SimpleDateFormat;

    .restart local v1    # "fmtDate":Ljava/text/SimpleDateFormat;
    goto/16 :goto_0

    .line 283
    .end local v2    # "fmtOpt":Ljava/lang/String;
    .restart local v7    # "selOpt":Ljava/lang/String;
    :cond_4
    const-string v10, "time"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 284
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 299
    .end local v0    # "fmt":Ljava/lang/String;
    .end local v1    # "fmtDate":Ljava/text/SimpleDateFormat;
    .end local v3    # "fmtTime":Ljava/text/SimpleDateFormat;
    .end local v5    # "innerOptions":Lorg/json/JSONObject;
    .end local v7    # "selOpt":Ljava/lang/String;
    .end local v8    # "test":Z
    :catch_0
    move-exception v4

    .line 300
    .local v4, "ge":Ljava/lang/Exception;
    new-instance v10, Lorg/apache/cordova/GlobalizationError;

    const-string v11, "PATTERN_ERROR"

    invoke-direct {v10, v11}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private getDateToString(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .local v4, "obj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Ljava/util/Date;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 183
    .local v0, "date":Ljava/util/Date;
    invoke-direct {p0, p1}, Lorg/apache/cordova/Globalization;->getDatePattern(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v1

    .line 184
    .local v1, "datePattern":Lorg/json/JSONObject;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "pattern"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, "fmt":Ljava/text/SimpleDateFormat;
    const-string v5, "value"

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 188
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "datePattern":Lorg/json/JSONObject;
    .end local v2    # "fmt":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    .line 189
    .local v3, "ge":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/cordova/GlobalizationError;

    const-string v6, "FORMATTING_ERROR"

    invoke-direct {v5, v6}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getFirstDayOfWeek(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 409
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 410
    .local v2, "value":I
    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 411
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    .line 412
    .local v0, "ge":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/cordova/GlobalizationError;

    const-string v4, "UNKNOWN_ERROR"

    invoke-direct {v3, v4}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getIsDayLightSavingsTime(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 385
    .local v3, "obj":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 387
    .local v1, "dst":Z
    :try_start_0
    new-instance v0, Ljava/util/Date;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 389
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 390
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-virtual {v4, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    .line 392
    const-string v5, "dst"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 393
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v2

    .line 394
    .local v2, "ge":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/cordova/GlobalizationError;

    const-string v6, "UNKNOWN_ERROR"

    invoke-direct {v5, v6}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getLocaleName()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "value"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/cordova/GlobalizationError;

    const-string v3, "UNKNOWN_ERROR"

    invoke-direct {v2, v3}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getNumberFormatInstance(Lorg/json/JSONArray;)Ljava/text/DecimalFormat;
    .locals 5
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    .line 563
    .local v1, "fmt":Ljava/text/DecimalFormat;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 565
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "options"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 566
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "options"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 567
    .local v2, "fmtOpt":Ljava/lang/String;
    const-string v3, "currency"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/DecimalFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/text/DecimalFormat;

    move-object v1, v0

    .line 576
    .end local v2    # "fmtOpt":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 569
    .restart local v2    # "fmtOpt":Ljava/lang/String;
    :cond_1
    const-string v3, "percent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/DecimalFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/text/DecimalFormat;

    move-object v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v2    # "fmtOpt":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getNumberPattern(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 478
    .local v3, "obj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 479
    .local v0, "fmt":Ljava/text/DecimalFormat;
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, "symbol":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 483
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "options"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 484
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "options"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 485
    .local v1, "fmtOpt":Ljava/lang/String;
    const-string v5, "currency"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 486
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/DecimalFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .end local v0    # "fmt":Ljava/text/DecimalFormat;
    check-cast v0, Ljava/text/DecimalFormat;

    .line 487
    .restart local v0    # "fmt":Ljava/text/DecimalFormat;
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    .line 496
    .end local v1    # "fmtOpt":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "pattern"

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    const-string v5, "symbol"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    const-string v5, "fraction"

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 499
    const-string v5, "rounding"

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v5, "positive"

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v5, "negative"

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string v5, "decimal"

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v5, "grouping"

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    return-object v3

    .line 488
    .restart local v1    # "fmtOpt":Ljava/lang/String;
    :cond_1
    const-string v5, "percent"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 489
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/DecimalFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .end local v0    # "fmt":Ljava/text/DecimalFormat;
    check-cast v0, Ljava/text/DecimalFormat;

    .line 490
    .restart local v0    # "fmt":Ljava/text/DecimalFormat;
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 506
    .end local v0    # "fmt":Ljava/text/DecimalFormat;
    .end local v1    # "fmtOpt":Ljava/lang/String;
    .end local v4    # "symbol":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 507
    .local v2, "ge":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/cordova/GlobalizationError;

    const-string v6, "PATTERN_ERROR"

    invoke-direct {v5, v6}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getNumberToString(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 425
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, ""

    .line 427
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/Globalization;->getNumberFormatInstance(Lorg/json/JSONArray;)Ljava/text/DecimalFormat;

    move-result-object v0

    .line 428
    .local v0, "fmt":Ljava/text/DecimalFormat;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "number"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 429
    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 430
    .end local v0    # "fmt":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v1

    .line 431
    .local v1, "ge":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/cordova/GlobalizationError;

    const-string v5, "FORMATTING_ERROR"

    invoke-direct {v4, v5}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getPreferredLanguage()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 162
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "value"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/cordova/GlobalizationError;

    const-string v3, "UNKNOWN_ERROR"

    invoke-direct {v2, v3}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getStringToNumber(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 447
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/Globalization;->getNumberFormatInstance(Lorg/json/JSONArray;)Ljava/text/DecimalFormat;

    move-result-object v0

    .line 448
    .local v0, "fmt":Ljava/text/DecimalFormat;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "numberString"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    .line 449
    .local v3, "value":Ljava/lang/Number;
    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 450
    .end local v0    # "fmt":Ljava/text/DecimalFormat;
    .end local v3    # "value":Ljava/lang/Number;
    :catch_0
    move-exception v1

    .line 451
    .local v1, "ge":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/cordova/GlobalizationError;

    const-string v5, "PARSING_ERROR"

    invoke-direct {v4, v5}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getStringtoDate(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "options"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/GlobalizationError;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .local v3, "obj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p1}, Lorg/apache/cordova/Globalization;->getDatePattern(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "pattern"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "fmt":Ljava/text/DateFormat;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "dateString"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 219
    .local v0, "date":Ljava/util/Date;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 220
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 223
    const-string v5, "year"

    iget v6, v4, Landroid/text/format/Time;->year:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string v5, "month"

    iget v6, v4, Landroid/text/format/Time;->month:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    const-string v5, "day"

    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    const-string v5, "hour"

    iget v6, v4, Landroid/text/format/Time;->hour:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string v5, "minute"

    iget v6, v4, Landroid/text/format/Time;->minute:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    const-string v5, "second"

    iget v6, v4, Landroid/text/format/Time;->second:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string v5, "millisecond"

    new-instance v6, Ljava/lang/Long;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    return-object v3

    .line 231
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "fmt":Ljava/text/DateFormat;
    .end local v4    # "time":Landroid/text/format/Time;
    :catch_0
    move-exception v2

    .line 232
    .local v2, "ge":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/cordova/GlobalizationError;

    const-string v6, "PARSING_ERROR"

    invoke-direct {v5, v6}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    .line 91
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "getLocaleName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-direct {p0}, Lorg/apache/cordova/Globalization;->getLocaleName()Lorg/json/JSONObject;

    move-result-object v2

    .line 126
    :goto_0
    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 132
    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 96
    :cond_0
    const-string v3, "getPreferredLanguage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-direct {p0}, Lorg/apache/cordova/Globalization;->getPreferredLanguage()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_1
    const-string v3, "dateToString"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getDateToString(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 100
    :cond_2
    const-string v3, "stringToDate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getStringtoDate(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 102
    :cond_3
    const-string v3, "getDatePattern"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getDatePattern(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 104
    :cond_4
    const-string v3, "getDateNames"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 105
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_5

    .line 106
    new-instance v3, Lorg/apache/cordova/GlobalizationError;

    const-string v4, "UNKNOWN_ERROR"

    invoke-direct {v3, v4}, Lorg/apache/cordova/GlobalizationError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/apache/cordova/GlobalizationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "ge":Lorg/apache/cordova/GlobalizationError;
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/GlobalizationError;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_1

    .line 108
    .end local v1    # "ge":Lorg/apache/cordova/GlobalizationError;
    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getDateNames(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 110
    :cond_6
    const-string v3, "isDayLightSavingsTime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 111
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getIsDayLightSavingsTime(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 112
    :cond_7
    const-string v3, "getFirstDayOfWeek"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 113
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getFirstDayOfWeek(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 114
    :cond_8
    const-string v3, "numberToString"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 115
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getNumberToString(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    .line 116
    :cond_9
    const-string v3, "stringToNumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 117
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getStringToNumber(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    .line 118
    :cond_a
    const-string v3, "getNumberPattern"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 119
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getNumberPattern(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_0

    .line 120
    :cond_b
    const-string v3, "getCurrencyPattern"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 121
    invoke-direct {p0, p2}, Lorg/apache/cordova/Globalization;->getCurrencyPattern(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/apache/cordova/GlobalizationError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 123
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 129
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_1
.end method
