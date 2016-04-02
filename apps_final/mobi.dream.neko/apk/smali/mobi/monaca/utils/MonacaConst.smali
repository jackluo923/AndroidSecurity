.class public Lmobi/monaca/utils/MonacaConst;
.super Ljava/lang/Object;
.source "MonacaConst.java"


# static fields
.field private static final KEY_DOMAIN:Ljava/lang/String; = "domain"

.field private static final KEY_ENV:Ljava/lang/String; = "env"

.field private static final KEY_ISCUSTOM:Ljava/lang/String; = "isCustom"

.field private static final SCHEME:Ljava/lang/String; = "https://"

.field private static constMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lmobi/monaca/utils/MonacaConst;->constMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConst(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50
    :cond_0
    sget-object v0, Lmobi/monaca/utils/MonacaConst;->constMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 51
    invoke-static {p0}, Lmobi/monaca/utils/MonacaConst;->loadMonacaConst(Landroid/content/Context;)V

    .line 53
    :cond_1
    sget-object v0, Lmobi/monaca/utils/MonacaConst;->constMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getIsCustom(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-string v0, "isCustom"

    invoke-static {p0, v0}, Lmobi/monaca/utils/MonacaConst;->getConst(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPushRegistrationAPIUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushProjectId"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "domain"

    invoke-static {p0, v2}, Lmobi/monaca/utils/MonacaConst;->getConst(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v1/push/register/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPushUnegistrationAPIUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushProjectId"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "domain"

    invoke-static {p0, v2}, Lmobi/monaca/utils/MonacaConst;->getConst(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v1/push/unregister/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static loadMonacaConst(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lmobi/monaca/utils/MonacaConst;->constMap:Ljava/util/Map;

    .line 58
    sget-object v8, Lmobi/monaca/utils/MonacaConst;->constMap:Ljava/util/Map;

    const-string v9, "domain"

    const-string v10, "api.monaca.mobi"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v8, Lmobi/monaca/utils/MonacaConst;->constMap:Ljava/util/Map;

    const-string v9, "env"

    const-string v10, "prod"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v8, Lmobi/monaca/utils/MonacaConst;->constMap:Ljava/util/Map;

    const-string v9, "isCustom"

    const-string v10, "false"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 63
    .local v6, "res":Landroid/content/res/Resources;
    const-string v8, "monaca_const"

    const-string v9, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 64
    .local v4, "id":I
    if-eqz v4, :cond_2

    .line 65
    const-string v8, "MonacaConst"

    const-string v9, "found monaca_const.xml"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 67
    .local v7, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v2, -0x1

    .line 68
    .local v2, "eventType":I
    :goto_0
    const/4 v8, 0x1

    if-eq v2, v8, :cond_2

    .line 69
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "node":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    const-string v8, "monaca"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 71
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    .line 72
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 73
    sget-object v8, Lmobi/monaca/utils/MonacaConst;->constMap:Ljava/util/Map;

    invoke-interface {v7, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 76
    :cond_0
    const/4 v2, 0x1

    .line 77
    goto :goto_0

    .line 79
    .end local v0    # "count":I
    .end local v3    # "i":I
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x1

    .line 82
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 85
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "eventType":I
    .end local v5    # "node":Ljava/lang/String;
    .end local v7    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_2
    return-void
.end method
