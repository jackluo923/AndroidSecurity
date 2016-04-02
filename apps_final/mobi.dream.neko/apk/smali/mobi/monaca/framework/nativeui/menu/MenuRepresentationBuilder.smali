.class public Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;
.super Ljava/lang/Object;
.source "MenuRepresentationBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;>;"
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->getMenuRepresentationBuilder(Landroid/content/Context;)Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;

    move-result-object v0

    .line 40
    .local v0, "builder":Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->buildMenu(Lorg/json/JSONArray;)Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public buildFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->getStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "jsonString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, v2}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->build(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 99
    :goto_0
    return-object v2

    .line 95
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->build(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, v2}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->build(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method protected buildMenu(Lorg/json/JSONArray;)Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;
    .locals 3
    .param p1, "menu"    # Lorg/json/JSONArray;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance p1, Lorg/json/JSONArray;

    .end local p1    # "menu":Lorg/json/JSONArray;
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 60
    .restart local p1    # "menu":Lorg/json/JSONArray;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 63
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->buildMenuItem(Lorg/json/JSONObject;)Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    new-instance v2, Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;

    invoke-direct {v2, v1}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method protected buildMenuItem(Lorg/json/JSONObject;)Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 71
    new-instance v0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_menu_name:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "menuItem":Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;
    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_menu_action:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->setAction(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->getWWWPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_image:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->setIconImagePath(Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method protected getMenuRepresentationBuilder(Landroid/content/Context;)Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;

    invoke-direct {v0, p1}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetFilePath"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    invoke-static {p1, p2}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->openAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 112
    .local v4, "stream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 113
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 115
    .local v5, "writer":Ljava/io/Writer;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 118
    .local v0, "buffer":[C
    :goto_0
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    .local v2, "n":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 119
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    .end local v2    # "n":I
    :catch_0
    move-exception v6

    .line 125
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 126
    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 133
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v0    # "buffer":[C
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v5    # "writer":Ljava/io/Writer;
    :goto_2
    return-object v6

    .line 108
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    const-string v6, ""

    goto :goto_2

    .line 125
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[C
    .restart local v2    # "n":I
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local v5    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 126
    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 129
    :catch_2
    move-exception v6

    goto :goto_1

    .line 124
    .end local v2    # "n":I
    :catchall_0
    move-exception v6

    .line 125
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 126
    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 130
    :cond_2
    :goto_3
    throw v6

    .line 129
    :catch_3
    move-exception v7

    goto :goto_3

    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method protected getWWWPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, ""

    return-object v0
.end method
