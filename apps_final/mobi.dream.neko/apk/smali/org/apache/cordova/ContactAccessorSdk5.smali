.class public Lorg/apache/cordova/ContactAccessorSdk5;
.super Lorg/apache/cordova/ContactAccessor;
.source "ContactAccessorSdk5.java"


# static fields
.field private static final EMAIL_REGEXP:Ljava/lang/String; = ".+@.+\\.+.+"

.field private static final MAX_PHOTO_SIZE:J = 0x100000L

.field private static final dbMap:Ljava/util/Map;
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
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    .line 89
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "displayName"

    const-string v2, "display_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.formatted"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.familyName"

    const-string v2, "data3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.givenName"

    const-string v2, "data2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.middleName"

    const-string v2, "data5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.honorificPrefix"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.honorificSuffix"

    const-string v2, "data6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "nickname"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "emails"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "emails.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.formatted"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.streetAddress"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.locality"

    const-string v2, "data7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.region"

    const-string v2, "data8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.postalCode"

    const-string v2, "data9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.country"

    const-string v2, "data10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "ims"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "ims.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.name"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.department"

    const-string v2, "data5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.title"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "birthday"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "note"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "photos.value"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "urls"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "urls.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "context"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/apache/cordova/ContactAccessor;-><init>()V

    .line 128
    iput-object p2, p0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    .line 129
    iput-object p1, p0, Lorg/apache/cordova/ContactAccessorSdk5;->mView:Landroid/webkit/WebView;

    .line 130
    return-void
.end method

.method private addressQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 753
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 755
    .local v0, "address":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 757
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/ContactAccessorSdk5;->getAddressType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    const-string v2, "formatted"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    const-string v2, "streetAddress"

    const-string v3, "data4"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    const-string v2, "locality"

    const-string v3, "data7"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    const-string v2, "region"

    const-string v3, "data8"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    const-string v2, "postalCode"

    const-string v3, "data9"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 763
    const-string v2, "country"

    const-string v3, "data10"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-object v0

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private buildIdClause(Ljava/util/Set;Ljava/lang/String;)Lorg/apache/cordova/ContactAccessor$WhereOptions;
    .locals 5
    .param p2, "searchTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/cordova/ContactAccessor$WhereOptions;"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/cordova/ContactAccessor$WhereOptions;

    invoke-direct {v2, p0}, Lorg/apache/cordova/ContactAccessor$WhereOptions;-><init>(Lorg/apache/cordova/ContactAccessor;)V

    .line 468
    .local v2, "options":Lorg/apache/cordova/ContactAccessor$WhereOptions;
    const-string v3, "%"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    const-string v3, "(contact_id LIKE ? )"

    invoke-virtual {v2, v3}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 470
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    .line 489
    :goto_0
    return-object v2

    .line 475
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 476
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "("

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 484
    :cond_2
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 487
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildWhereClause(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/ContactAccessor$WhereOptions;
    .locals 13
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "searchTerm"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 544
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v6, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v7, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lorg/apache/cordova/ContactAccessor$WhereOptions;

    invoke-direct {v3, p0}, Lorg/apache/cordova/ContactAccessor$WhereOptions;-><init>(Lorg/apache/cordova/ContactAccessor;)V

    .line 552
    .local v3, "options":Lorg/apache/cordova/ContactAccessor$WhereOptions;
    invoke-direct {p0, p1}, Lorg/apache/cordova/ContactAccessorSdk5;->isWildCardSearch(Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 554
    const-string v8, "%"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 555
    const-string v8, "(display_name LIKE ? )"

    invoke-virtual {v3, v8}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 556
    new-array v8, v11, [Ljava/lang/String;

    aput-object p2, v8, v12

    invoke-virtual {v3, v8}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    .line 704
    :goto_0
    return-object v3

    .line 560
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "displayName"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "name"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "nickname"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "phoneNumbers"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "emails"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "addresses"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "ims"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    const-string v8, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "organizations"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "note"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "urls"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_1
    const-string v8, "%"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 605
    const-string v8, "(display_name LIKE ? )"

    invoke-virtual {v3, v8}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 606
    new-array v8, v11, [Ljava/lang/String;

    aput-object p2, v8, v12

    invoke-virtual {v3, v8}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 613
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 614
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "key":Ljava/lang/String;
    const-string v8, "id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 617
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    const/4 v8, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 620
    :cond_4
    const-string v8, "displayName"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 621
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 683
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 689
    .local v4, "selection":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_10

    .line 690
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v1, v8, :cond_6

    .line 692
    const-string v8, " OR "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 624
    .end local v4    # "selection":Ljava/lang/StringBuffer;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v8, "name"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 625
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 630
    :cond_8
    const-string v8, "nickname"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 631
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 636
    :cond_9
    const-string v8, "phoneNumbers"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 637
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 642
    :cond_a
    const-string v8, "emails"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 643
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 648
    :cond_b
    const-string v8, "addresses"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 649
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 654
    :cond_c
    const-string v8, "ims"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 655
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const-string v8, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 660
    :cond_d
    const-string v8, "organizations"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 661
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 670
    :cond_e
    const-string v8, "note"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 671
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 676
    :cond_f
    const-string v8, "urls"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 677
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 695
    .end local v2    # "key":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/StringBuffer;
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 699
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_11

    .line 700
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v1

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 702
    :cond_11
    invoke-virtual {v3, v5}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private createNewContact(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1599
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    .local v18, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v27, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "account_type"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "account_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    :try_start_0
    const-string v27, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1610
    .local v14, "name":Lorg/json/JSONObject;
    const-string v27, "displayName"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1611
    .local v7, "displayName":Ljava/lang/String;
    if-nez v7, :cond_0

    if-eqz v14, :cond_1

    .line 1612
    :cond_0
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/name"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data3"

    const-string v29, "familyName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data5"

    const-string v29, "middleName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data2"

    const-string v29, "givenName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data4"

    const-string v29, "honorificPrefix"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data6"

    const-string v29, "honorificSuffix"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v14    # "name":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    const/16 v22, 0x0

    .line 1630
    .local v22, "phones":Lorg/json/JSONArray;
    :try_start_1
    const-string v27, "phoneNumbers"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 1631
    if-eqz v22, :cond_2

    .line 1632
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_2

    .line 1633
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/json/JSONObject;

    .line 1634
    .local v21, "phone":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->insertPhone(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1632
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1623
    .end local v11    # "i":I
    .end local v21    # "phone":Lorg/json/JSONObject;
    .end local v22    # "phones":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 1624
    .local v8, "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get name object"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1637
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v22    # "phones":Lorg/json/JSONArray;
    :catch_1
    move-exception v8

    .line 1638
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get phone numbers"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_2
    const/4 v10, 0x0

    .line 1644
    .local v10, "emails":Lorg/json/JSONArray;
    :try_start_2
    const-string v27, "emails"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1645
    if-eqz v10, :cond_3

    .line 1646
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_3

    .line 1647
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 1648
    .local v9, "email":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lorg/apache/cordova/ContactAccessorSdk5;->insertEmail(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1646
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1651
    .end local v9    # "email":Lorg/json/JSONObject;
    .end local v11    # "i":I
    :catch_2
    move-exception v8

    .line 1652
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get emails"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v4, 0x0

    .line 1658
    .local v4, "addresses":Lorg/json/JSONArray;
    :try_start_3
    const-string v27, "addresses"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1659
    if-eqz v4, :cond_4

    .line 1660
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_4

    .line 1661
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1662
    .local v3, "address":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lorg/apache/cordova/ContactAccessorSdk5;->insertAddress(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1660
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1665
    .end local v3    # "address":Lorg/json/JSONObject;
    .end local v11    # "i":I
    :catch_3
    move-exception v8

    .line 1666
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get addresses"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_4
    const/16 v20, 0x0

    .line 1672
    .local v20, "organizations":Lorg/json/JSONArray;
    :try_start_4
    const-string v27, "organizations"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 1673
    if-eqz v20, :cond_5

    .line 1674
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_5

    .line 1675
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 1676
    .local v19, "org":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->insertOrganization(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1674
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1679
    .end local v11    # "i":I
    .end local v19    # "org":Lorg/json/JSONObject;
    :catch_4
    move-exception v8

    .line 1680
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get organizations"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v13, 0x0

    .line 1686
    .local v13, "ims":Lorg/json/JSONArray;
    :try_start_5
    const-string v27, "ims"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1687
    if-eqz v13, :cond_6

    .line 1688
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_6

    .line 1689
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 1690
    .local v12, "im":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lorg/apache/cordova/ContactAccessorSdk5;->insertIm(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1688
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1693
    .end local v11    # "i":I
    .end local v12    # "im":Lorg/json/JSONObject;
    :catch_5
    move-exception v8

    .line 1694
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get emails"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_6
    const-string v27, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1699
    .local v17, "note":Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 1700
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/note"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    :cond_7
    const-string v27, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1709
    .local v16, "nickname":Ljava/lang/String;
    if-eqz v16, :cond_8

    .line 1710
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/nickname"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    :cond_8
    const/16 v26, 0x0

    .line 1720
    .local v26, "websites":Lorg/json/JSONArray;
    :try_start_6
    const-string v27, "urls"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    .line 1721
    if-eqz v26, :cond_9

    .line 1722
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_9

    .line 1723
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/json/JSONObject;

    .line 1724
    .local v25, "website":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->insertWebsite(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1722
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1727
    .end local v11    # "i":I
    .end local v25    # "website":Lorg/json/JSONObject;
    :catch_6
    move-exception v8

    .line 1728
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get websites"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_9
    const-string v27, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1733
    .local v5, "birthday":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 1734
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/contact_event"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data2"

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    :cond_a
    const/16 v24, 0x0

    .line 1745
    .local v24, "photos":Lorg/json/JSONArray;
    :try_start_7
    const-string v27, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 1746
    if-eqz v24, :cond_b

    .line 1747
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_b

    .line 1748
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/json/JSONObject;

    .line 1749
    .local v23, "photo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->insertPhoto(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1747
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1752
    .end local v11    # "i":I
    .end local v23    # "photo":Lorg/json/JSONObject;
    :catch_7
    move-exception v8

    .line 1753
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get photos"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_b
    const/4 v15, 0x0

    .line 1759
    .local v15, "newId":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "com.android.contacts"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 1760
    .local v6, "cpResults":[Landroid/content/ContentProviderResult;
    array-length v0, v6

    move/from16 v27, v0

    if-ltz v27, :cond_c

    .line 1761
    const/16 v27, 0x0

    aget-object v27, v6, v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_9

    move-result-object v15

    .line 1768
    .end local v6    # "cpResults":[Landroid/content/ContentProviderResult;
    :cond_c
    :goto_8
    return-object v15

    .line 1763
    :catch_8
    move-exception v8

    .line 1764
    .local v8, "e":Landroid/os/RemoteException;
    const-string v27, "ContactsAccessor"

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1765
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v8

    .line 1766
    .local v8, "e":Landroid/content/OperationApplicationException;
    const-string v27, "ContactsAccessor"

    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private emailQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 840
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 842
    .local v1, "email":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 843
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 844
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 845
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/ContactAccessorSdk5;->getContactType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    return-object v1

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getAddressType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2056
    const/4 v0, 0x3

    .line 2057
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2058
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2059
    const/4 v0, 0x2

    .line 2068
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 2061
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2062
    const/4 v0, 0x3

    goto :goto_0

    .line 2064
    :cond_2
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2065
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAddressType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2078
    packed-switch p1, :pswitch_data_0

    .line 2087
    const-string v0, "other"

    .line 2090
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2080
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "home"

    .line 2081
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2083
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "work"

    .line 2084
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2078
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getContactType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1958
    const/4 v0, 0x3

    .line 1959
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 1960
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1961
    const/4 v0, 0x1

    .line 1976
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 1963
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1964
    const/4 v0, 0x2

    goto :goto_0

    .line 1966
    :cond_2
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1967
    const/4 v0, 0x3

    goto :goto_0

    .line 1969
    :cond_3
    const-string v1, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1970
    const/4 v0, 0x4

    goto :goto_0

    .line 1972
    :cond_4
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1973
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContactType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1986
    packed-switch p1, :pswitch_data_0

    .line 2001
    :pswitch_0
    const-string v0, "other"

    .line 2004
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1988
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "custom"

    .line 1989
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1991
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "home"

    .line 1992
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1994
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "work"

    .line 1995
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1997
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "mobile"

    .line 1998
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1986
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getImType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2099
    const/4 v0, -0x1

    .line 2100
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2101
    const-string v1, "aim"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2102
    const/4 v0, 0x0

    .line 2129
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 2104
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "google talk"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2105
    const/4 v0, 0x5

    goto :goto_0

    .line 2107
    :cond_2
    const-string v1, "icq"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2108
    const/4 v0, 0x6

    goto :goto_0

    .line 2110
    :cond_3
    const-string v1, "jabber"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2111
    const/4 v0, 0x7

    goto :goto_0

    .line 2113
    :cond_4
    const-string v1, "msn"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2114
    const/4 v0, 0x1

    goto :goto_0

    .line 2116
    :cond_5
    const-string v1, "netmeeting"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2117
    const/16 v0, 0x8

    goto :goto_0

    .line 2119
    :cond_6
    const-string v1, "qq"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2120
    const/4 v0, 0x4

    goto :goto_0

    .line 2122
    :cond_7
    const-string v1, "skype"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2123
    const/4 v0, 0x3

    goto :goto_0

    .line 2125
    :cond_8
    const-string v1, "yahoo"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getImType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2139
    packed-switch p1, :pswitch_data_0

    .line 2168
    const-string v0, "custom"

    .line 2171
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2141
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "AIM"

    .line 2142
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2144
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Google Talk"

    .line 2145
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2147
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "ICQ"

    .line 2148
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2150
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "Jabber"

    .line 2151
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2153
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "MSN"

    .line 2154
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2156
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "NetMeeting"

    .line 2157
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2159
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "QQ"

    .line 2160
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2162
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "Skype"

    .line 2163
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2165
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "Yahoo"

    .line 2166
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private getOrgType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2013
    const/4 v0, 0x2

    .line 2014
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2015
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2016
    const/4 v0, 0x1

    .line 2025
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 2018
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2019
    const/4 v0, 0x2

    goto :goto_0

    .line 2021
    :cond_2
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2022
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrgType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2035
    packed-switch p1, :pswitch_data_0

    .line 2044
    const-string v0, "other"

    .line 2047
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2037
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "custom"

    .line 2038
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2040
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "work"

    .line 2041
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2035
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1578
    const-string v2, "content:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1579
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1580
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1587
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 1582
    :cond_0
    const-string v2, "http:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1583
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 1587
    .end local v1    # "url":Ljava/net/URL;
    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPhoneType(Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 1807
    const/4 v0, 0x7

    .line 1808
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 1809
    const-string v2, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1810
    const/4 v0, 0x1

    .line 1876
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 1812
    .restart local v0    # "type":I
    :cond_1
    const-string v2, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1813
    const/4 v0, 0x2

    goto :goto_0

    .line 1815
    :cond_2
    const-string v2, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1816
    const/4 v0, 0x3

    goto :goto_0

    .line 1818
    :cond_3
    const-string v2, "work fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1819
    goto :goto_0

    .line 1821
    :cond_4
    const-string v2, "home fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1822
    const/4 v0, 0x5

    goto :goto_0

    .line 1824
    :cond_5
    const-string v2, "fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 1825
    goto :goto_0

    .line 1827
    :cond_6
    const-string v1, "pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1828
    const/4 v0, 0x6

    goto :goto_0

    .line 1830
    :cond_7
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1831
    const/4 v0, 0x7

    goto :goto_0

    .line 1833
    :cond_8
    const-string v1, "car"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1834
    const/16 v0, 0x9

    goto :goto_0

    .line 1836
    :cond_9
    const-string v1, "company main"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1837
    const/16 v0, 0xa

    goto :goto_0

    .line 1839
    :cond_a
    const-string v1, "isdn"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1840
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 1842
    :cond_b
    const-string v1, "main"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1843
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1845
    :cond_c
    const-string v1, "other fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1846
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1848
    :cond_d
    const-string v1, "radio"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1849
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1851
    :cond_e
    const-string v1, "telex"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1852
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1854
    :cond_f
    const-string v1, "work mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1855
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 1857
    :cond_10
    const-string v1, "work pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1858
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 1860
    :cond_11
    const-string v1, "assistant"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1861
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 1863
    :cond_12
    const-string v1, "mms"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1864
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 1866
    :cond_13
    const-string v1, "callback"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1867
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 1869
    :cond_14
    const-string v1, "tty ttd"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1870
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 1872
    :cond_15
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1873
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getPhoneType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1886
    packed-switch p1, :pswitch_data_0

    .line 1946
    :pswitch_0
    const-string v0, "other"

    .line 1949
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1888
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "custom"

    .line 1889
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1891
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "home fax"

    .line 1892
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1894
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "work fax"

    .line 1895
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1897
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "home"

    .line 1898
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1900
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "mobile"

    .line 1901
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1903
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "pager"

    .line 1904
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1906
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "work"

    .line 1907
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1909
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "callback"

    .line 1910
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1912
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_9
    const-string v0, "car"

    .line 1913
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1915
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_a
    const-string v0, "company main"

    .line 1916
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1918
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_b
    const-string v0, "other fax"

    .line 1919
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1921
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_c
    const-string v0, "radio"

    .line 1922
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1924
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_d
    const-string v0, "telex"

    .line 1925
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1927
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_e
    const-string v0, "tty tdd"

    .line 1928
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1930
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_f
    const-string v0, "work mobile"

    .line 1931
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1933
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_10
    const-string v0, "work pager"

    .line 1934
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1936
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_11
    const-string v0, "assistant"

    .line 1937
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1939
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_12
    const-string v0, "mms"

    .line 1940
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1942
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_13
    const-string v0, "isdn"

    .line 1943
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1886
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_13
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getPhotoBytes(Ljava/lang/String;)[B
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1548
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1550
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1551
    .local v1, "bytesRead":I
    const-wide/16 v5, 0x0

    .line 1552
    .local v5, "totalBytesRead":J
    const/16 v7, 0x2000

    :try_start_0
    new-array v2, v7, [B

    .line 1553
    .local v2, "data":[B
    invoke-direct {p0, p1}, Lorg/apache/cordova/ContactAccessorSdk5;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1555
    .local v4, "in":Ljava/io/InputStream;
    :goto_0
    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v4, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    const-wide/32 v7, 0x100000

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    .line 1556
    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1557
    int-to-long v7, v1

    add-long/2addr v5, v7

    goto :goto_0

    .line 1560
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1561
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1567
    .end local v2    # "data":[B
    .end local v4    # "in":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 1562
    :catch_0
    move-exception v3

    .line 1563
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v7, "ContactsAccessor"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1564
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1565
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "ContactsAccessor"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private imQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 858
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 860
    .local v1, "im":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 862
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    const-string v2, "type"

    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/ContactAccessorSdk5;->getImType(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_0
    return-object v1

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private insertAddress(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "address"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1478
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getAddressType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "formatted"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data4"

    const-string v2, "streetAddress"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data7"

    const-string v2, "locality"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data8"

    const-string v2, "region"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data9"

    const-string v2, "postalCode"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data10"

    const-string v2, "country"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    return-void
.end method

.method private insertEmail(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "email"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1499
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    return-void
.end method

.method private insertIm(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "im"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1444
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getImType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    return-void
.end method

.method private insertOrganization(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "org"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1460
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getOrgType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data5"

    const-string v2, "department"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "name"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data4"

    const-string v2, "title"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    return-void
.end method

.method private insertPhone(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "phone"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1515
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    return-void
.end method

.method private insertPhoto(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 4
    .param p2, "photo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1531
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "value"

    invoke-virtual {p0, p2, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getPhotoBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1532
    .local v0, "bytes":[B
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "is_super_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data15"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    return-void
.end method

.method private insertWebsite(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "website"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1429
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    return-void
.end method

.method private isWildCardSearch(Lorg/json/JSONArray;)Z
    .locals 5
    .param p1, "fields"    # Lorg/json/JSONArray;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 715
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 717
    :try_start_0
    const-string v3, "*"

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 724
    :goto_0
    return v1

    .line 720
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move v1, v2

    .line 721
    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    move v1, v2

    .line 724
    goto :goto_0
.end method

.method private modifyContact(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 49
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "contact"    # Lorg/json/JSONObject;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;

    .prologue
    .line 974
    new-instance v43, Ljava/lang/Integer;

    const-string v44, "rawId"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 977
    .local v38, "rawId":I
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 980
    .local v28, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v43, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "account_type"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "account_name"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    :try_start_0
    const-string v43, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 989
    .local v10, "displayName":Ljava/lang/String;
    const-string v43, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 990
    .local v25, "name":Lorg/json/JSONObject;
    if-nez v10, :cond_0

    if-eqz v25, :cond_7

    .line 991
    :cond_0
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p1, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/name"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 996
    .local v7, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v10, :cond_1

    .line 997
    const-string v43, "data1"

    move-object/from16 v0, v43

    invoke-virtual {v7, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1000
    :cond_1
    const-string v43, "familyName"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1001
    .local v16, "familyName":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 1002
    const-string v43, "data3"

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1004
    :cond_2
    const-string v43, "middleName"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1005
    .local v24, "middleName":Ljava/lang/String;
    if-eqz v24, :cond_3

    .line 1006
    const-string v43, "data5"

    move-object/from16 v0, v43

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1008
    :cond_3
    const-string v43, "givenName"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1009
    .local v17, "givenName":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 1010
    const-string v43, "data2"

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1012
    :cond_4
    const-string v43, "honorificPrefix"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1013
    .local v18, "honorificPrefix":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 1014
    const-string v43, "data4"

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1016
    :cond_5
    const-string v43, "honorificSuffix"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1017
    .local v19, "honorificSuffix":Ljava/lang/String;
    if-eqz v19, :cond_6

    .line 1018
    const-string v43, "data6"

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1021
    :cond_6
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    .end local v7    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v16    # "familyName":Ljava/lang/String;
    .end local v17    # "givenName":Ljava/lang/String;
    .end local v18    # "honorificPrefix":Ljava/lang/String;
    .end local v19    # "honorificSuffix":Ljava/lang/String;
    .end local v24    # "middleName":Ljava/lang/String;
    .end local v25    # "name":Lorg/json/JSONObject;
    :cond_7
    :goto_0
    const/16 v34, 0x0

    .line 1030
    .local v34, "phones":Lorg/json/JSONArray;
    :try_start_1
    const-string v43, "phoneNumbers"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    .line 1031
    if-eqz v34, :cond_8

    .line 1033
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-nez v43, :cond_11

    .line 1034
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "raw_contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, ""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/phone_v2"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1074
    :cond_8
    :goto_1
    const/4 v15, 0x0

    .line 1076
    .local v15, "emails":Lorg/json/JSONArray;
    :try_start_2
    const-string v43, "emails"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 1077
    if-eqz v15, :cond_9

    .line 1079
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-nez v43, :cond_13

    .line 1080
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "raw_contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, ""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/email_v2"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1120
    :cond_9
    :goto_2
    const/4 v5, 0x0

    .line 1122
    .local v5, "addresses":Lorg/json/JSONArray;
    :try_start_3
    const-string v43, "addresses"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1123
    if-eqz v5, :cond_a

    .line 1125
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-nez v43, :cond_15

    .line 1126
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "raw_contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, ""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/postal-address_v2"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1176
    :cond_a
    :goto_3
    const/16 v31, 0x0

    .line 1178
    .local v31, "organizations":Lorg/json/JSONArray;
    :try_start_4
    const-string v43, "organizations"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 1179
    if-eqz v31, :cond_b

    .line 1181
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-nez v43, :cond_17

    .line 1182
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "raw_contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, ""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/organization"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1226
    :cond_b
    :goto_4
    const/16 v23, 0x0

    .line 1228
    .local v23, "ims":Lorg/json/JSONArray;
    :try_start_5
    const-string v43, "ims"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 1229
    if-eqz v23, :cond_c

    .line 1231
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-nez v43, :cond_19

    .line 1232
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "raw_contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, ""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/im"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1272
    :cond_c
    :goto_5
    const-string v43, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1273
    .local v27, "note":Ljava/lang/String;
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p1, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/note"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    const-string v43, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1282
    .local v26, "nickname":Ljava/lang/String;
    if-eqz v26, :cond_d

    .line 1283
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p1, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/nickname"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    :cond_d
    const/16 v42, 0x0

    .line 1294
    .local v42, "websites":Lorg/json/JSONArray;
    :try_start_6
    const-string v43, "urls"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v42

    .line 1295
    if-eqz v42, :cond_e

    .line 1297
    invoke-virtual/range {v42 .. v42}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-nez v43, :cond_1b

    .line 1298
    const-string v43, "ContactsAccessor"

    const-string v44, "This means we should be deleting all the phone numbers."

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "raw_contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, ""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/website"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1339
    :cond_e
    :goto_6
    const-string v43, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1340
    .local v6, "birthday":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 1341
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "contact_id=? AND mimetype=? AND data2=?"

    const/16 v45, 0x3

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p1, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/contact_event"

    aput-object v47, v45, v46

    const/16 v46, 0x2

    new-instance v47, Ljava/lang/String;

    const-string v48, "3"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const/16 v45, 0x3

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_f
    const/16 v37, 0x0

    .line 1354
    .local v37, "photos":Lorg/json/JSONArray;
    :try_start_7
    const-string v43, "photos"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v37

    .line 1355
    if-eqz v37, :cond_10

    .line 1357
    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-nez v43, :cond_1d

    .line 1358
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "raw_contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, ""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/photo"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1398
    :cond_10
    :goto_7
    const/16 v39, 0x1

    .line 1402
    .local v39, "retVal":Z
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    const-string v44, "com.android.contacts"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_9

    .line 1414
    :goto_8
    if-eqz v39, :cond_1f

    .line 1417
    .end local p1    # "id":Ljava/lang/String;
    :goto_9
    return-object p1

    .line 1023
    .end local v5    # "addresses":Lorg/json/JSONArray;
    .end local v6    # "birthday":Ljava/lang/String;
    .end local v15    # "emails":Lorg/json/JSONArray;
    .end local v23    # "ims":Lorg/json/JSONArray;
    .end local v26    # "nickname":Ljava/lang/String;
    .end local v27    # "note":Ljava/lang/String;
    .end local v31    # "organizations":Lorg/json/JSONArray;
    .end local v34    # "phones":Lorg/json/JSONArray;
    .end local v37    # "photos":Lorg/json/JSONArray;
    .end local v39    # "retVal":Z
    .end local v42    # "websites":Lorg/json/JSONArray;
    .restart local p1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1024
    .local v12, "e1":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get name"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1042
    .end local v12    # "e1":Lorg/json/JSONException;
    .restart local v34    # "phones":Lorg/json/JSONArray;
    :cond_11
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_a
    :try_start_9
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_8

    .line 1043
    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/json/JSONObject;

    .line 1044
    .local v32, "phone":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1046
    .local v33, "phoneId":Ljava/lang/String;
    if-nez v33, :cond_12

    .line 1047
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1048
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1049
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v43, "data1"

    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1053
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_b
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_a

    .line 1058
    :cond_12
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v33, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/phone_v2"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_b

    .line 1069
    .end local v20    # "i":I
    .end local v32    # "phone":Lorg/json/JSONObject;
    .end local v33    # "phoneId":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1070
    .local v11, "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get phone numbers"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1088
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v15    # "emails":Lorg/json/JSONArray;
    :cond_13
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_c
    :try_start_a
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_9

    .line 1089
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 1090
    .local v13, "email":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1092
    .local v14, "emailId":Ljava/lang/String;
    if-nez v14, :cond_14

    .line 1093
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1094
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1095
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string v43, "data1"

    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_d
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_c

    .line 1104
    :cond_14
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v14, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/email_v2"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_d

    .line 1115
    .end local v13    # "email":Lorg/json/JSONObject;
    .end local v14    # "emailId":Ljava/lang/String;
    .end local v20    # "i":I
    :catch_2
    move-exception v11

    .line 1116
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get emails"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1134
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v5    # "addresses":Lorg/json/JSONArray;
    :cond_15
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_e
    :try_start_b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_a

    .line 1135
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1136
    .local v3, "address":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1138
    .local v4, "addressId":Ljava/lang/String;
    if-nez v4, :cond_16

    .line 1139
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1140
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1141
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getAddressType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    const-string v43, "data1"

    const-string v44, "formatted"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string v43, "data4"

    const-string v44, "streetAddress"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v43, "data7"

    const-string v44, "locality"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v43, "data8"

    const-string v44, "region"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v43, "data9"

    const-string v44, "postalCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v43, "data10"

    const-string v44, "country"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_f
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_e

    .line 1155
    :cond_16
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v4, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/postal-address_v2"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getAddressType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "formatted"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data4"

    const-string v45, "streetAddress"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data7"

    const-string v45, "locality"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data8"

    const-string v45, "region"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data9"

    const-string v45, "postalCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data10"

    const-string v45, "country"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_f

    .line 1171
    .end local v3    # "address":Lorg/json/JSONObject;
    .end local v4    # "addressId":Ljava/lang/String;
    .end local v20    # "i":I
    :catch_3
    move-exception v11

    .line 1172
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get addresses"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1190
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v31    # "organizations":Lorg/json/JSONArray;
    :cond_17
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_10
    :try_start_c
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_b

    .line 1191
    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/json/JSONObject;

    .line 1192
    .local v29, "org":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1194
    .local v30, "orgId":Ljava/lang/String;
    if-nez v30, :cond_18

    .line 1195
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1196
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1197
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getOrgType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1199
    const-string v43, "data5"

    const-string v44, "department"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v43, "data1"

    const-string v44, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v43, "data4"

    const-string v44, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_11
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_10

    .line 1208
    :cond_18
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v30, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/organization"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getOrgType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data5"

    const-string v45, "department"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data4"

    const-string v45, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_11

    .line 1221
    .end local v20    # "i":I
    .end local v29    # "org":Lorg/json/JSONObject;
    .end local v30    # "orgId":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 1222
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get organizations"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1240
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v23    # "ims":Lorg/json/JSONArray;
    :cond_19
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_12
    :try_start_d
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_c

    .line 1241
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/json/JSONObject;

    .line 1242
    .local v21, "im":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1244
    .local v22, "imId":Ljava/lang/String;
    if-nez v22, :cond_1a

    .line 1245
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1246
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/im"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v43, "data1"

    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getImType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_13
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_12

    .line 1256
    :cond_1a
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v22, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/im"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_13

    .line 1267
    .end local v20    # "i":I
    .end local v21    # "im":Lorg/json/JSONObject;
    .end local v22    # "imId":Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 1268
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get emails"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1307
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v26    # "nickname":Ljava/lang/String;
    .restart local v27    # "note":Ljava/lang/String;
    .restart local v42    # "websites":Lorg/json/JSONArray;
    :cond_1b
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_14
    :try_start_e
    invoke-virtual/range {v42 .. v42}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_e

    .line 1308
    move-object/from16 v0, v42

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/json/JSONObject;

    .line 1309
    .local v40, "website":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1311
    .local v41, "websiteId":Ljava/lang/String;
    if-nez v41, :cond_1c

    .line 1312
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1313
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1314
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/website"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v43, "data1"

    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1318
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_15
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_14

    .line 1323
    :cond_1c
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v41, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/website"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_15

    .line 1334
    .end local v20    # "i":I
    .end local v40    # "website":Lorg/json/JSONObject;
    .end local v41    # "websiteId":Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 1335
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get websites"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1366
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v6    # "birthday":Ljava/lang/String;
    .restart local v37    # "photos":Lorg/json/JSONArray;
    :cond_1d
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_16
    :try_start_f
    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_10

    .line 1367
    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/json/JSONObject;

    .line 1368
    .local v35, "photo":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1369
    .local v36, "photoId":Ljava/lang/String;
    const-string v43, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->getPhotoBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1371
    .local v8, "bytes":[B
    if-nez v36, :cond_1e

    .line 1372
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1373
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1374
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v43, "is_super_primary"

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1376
    const-string v43, "data15"

    move-object/from16 v0, v43

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1378
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_17
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_16

    .line 1383
    :cond_1e
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v36, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/photo"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "is_super_primary"

    const/16 v45, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data15"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_17

    .line 1394
    .end local v8    # "bytes":[B
    .end local v20    # "i":I
    .end local v35    # "photo":Lorg/json/JSONObject;
    .end local v36    # "photoId":Ljava/lang/String;
    :catch_7
    move-exception v11

    .line 1395
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get photos"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1403
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v39    # "retVal":Z
    :catch_8
    move-exception v11

    .line 1404
    .local v11, "e":Landroid/os/RemoteException;
    const-string v43, "ContactsAccessor"

    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1405
    const-string v43, "ContactsAccessor"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1406
    const/16 v39, 0x0

    .line 1411
    goto/16 :goto_8

    .line 1407
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v11

    .line 1408
    .local v11, "e":Landroid/content/OperationApplicationException;
    const-string v43, "ContactsAccessor"

    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1409
    const-string v43, "ContactsAccessor"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    const/16 v39, 0x0

    goto/16 :goto_8

    .line 1417
    .end local v11    # "e":Landroid/content/OperationApplicationException;
    :cond_1f
    const/16 p1, 0x0

    goto/16 :goto_9
.end method

.method private nameQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 776
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 778
    .local v0, "contactName":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "data3"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 779
    .local v2, "familyName":Ljava/lang/String;
    const-string v8, "data2"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 780
    .local v4, "givenName":Ljava/lang/String;
    const-string v8, "data5"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 781
    .local v7, "middleName":Ljava/lang/String;
    const-string v8, "data4"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 782
    .local v5, "honorificPrefix":Ljava/lang/String;
    const-string v8, "data6"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 785
    .local v6, "honorificSuffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v3, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 786
    .local v3, "formatted":Ljava/lang/StringBuffer;
    if-eqz v5, :cond_0

    .line 787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    :cond_0
    if-eqz v4, :cond_1

    .line 790
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 792
    :cond_1
    if-eqz v7, :cond_2

    .line 793
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    :cond_2
    if-eqz v2, :cond_3

    .line 796
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    :cond_3
    if-eqz v6, :cond_4

    .line 799
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    :cond_4
    const-string v8, "familyName"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    const-string v8, "givenName"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    const-string v8, "middleName"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    const-string v8, "honorificPrefix"

    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 806
    const-string v8, "honorificSuffix"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 807
    const-string v8, "formatted"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v2    # "familyName":Ljava/lang/String;
    .end local v3    # "formatted":Ljava/lang/StringBuffer;
    .end local v4    # "givenName":Ljava/lang/String;
    .end local v5    # "honorificPrefix":Ljava/lang/String;
    .end local v6    # "honorificSuffix":Ljava/lang/String;
    .end local v7    # "middleName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 808
    :catch_0
    move-exception v1

    .line 809
    .local v1, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private organizationQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 733
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 735
    .local v1, "organization":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 737
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/ContactAccessorSdk5;->getOrgType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    const-string v2, "department"

    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    const-string v2, "name"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    const-string v2, "title"

    const-string v3, "data4"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_0
    return-object v1

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 820
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 822
    .local v2, "phoneNumber":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 824
    const-string v3, "value"

    const-string v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    const-string v3, "type"

    const-string v4, "data2"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/cordova/ContactAccessorSdk5;->getPhoneType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 831
    :goto_0
    return-object v2

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 828
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 829
    .local v1, "excp":Ljava/lang/Exception;
    const-string v3, "ContactsAccessor"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private photoQuery(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    .line 894
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 896
    .local v2, "photo":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 898
    const-string v4, "type"

    const-string v5, "url"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 899
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 900
    .local v1, "person":Landroid/net/Uri;
    const-string v4, "photo"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 901
    .local v3, "photoUri":Landroid/net/Uri;
    const-string v4, "value"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    .end local v1    # "person":Landroid/net/Uri;
    .end local v3    # "photoUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "organizations"    # Lorg/json/JSONArray;
    .param p3, "addresses"    # Lorg/json/JSONArray;
    .param p4, "phones"    # Lorg/json/JSONArray;
    .param p5, "emails"    # Lorg/json/JSONArray;
    .param p6, "ims"    # Lorg/json/JSONArray;
    .param p7, "websites"    # Lorg/json/JSONArray;
    .param p8, "photos"    # Lorg/json/JSONArray;

    .prologue
    .line 509
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 510
    const-string v1, "organizations"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 513
    const-string v1, "addresses"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    :cond_1
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 516
    const-string v1, "phoneNumbers"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    :cond_2
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 519
    const-string v1, "emails"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    :cond_3
    invoke-virtual {p6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 522
    const-string v1, "ims"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    :cond_4
    invoke-virtual {p7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 525
    const-string v1, "urls"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    :cond_5
    invoke-virtual {p8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 528
    const-string v1, "photos"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_6
    :goto_0
    return-object p1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateContactArray(ILjava/util/HashMap;Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 36
    .param p1, "limit"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 318
    .local p2, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v22, ""

    .line 319
    .local v22, "contactId":Ljava/lang/String;
    const-string v33, ""

    .line 320
    .local v33, "rawId":Ljava/lang/String;
    const-string v29, ""

    .line 321
    .local v29, "oldContactId":Ljava/lang/String;
    const/16 v28, 0x1

    .line 322
    .local v28, "newContact":Z
    const-string v27, ""

    .line 324
    .local v27, "mimetype":Ljava/lang/String;
    new-instance v23, Lorg/json/JSONArray;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONArray;-><init>()V

    .line 325
    .local v23, "contacts":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 326
    .local v4, "contact":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 327
    .local v5, "organizations":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 328
    .local v6, "addresses":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 329
    .local v7, "phones":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 330
    .local v8, "emails":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 331
    .local v9, "ims":Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 332
    .local v10, "websites":Lorg/json/JSONArray;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 335
    .local v11, "photos":Lorg/json/JSONArray;
    const-string v3, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 336
    .local v14, "colContactId":I
    const-string v3, "raw_contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 337
    .local v20, "colRawContactId":I
    const-string v3, "mimetype"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 338
    .local v17, "colMimetype":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 339
    .local v15, "colDisplayName":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 340
    .local v19, "colNote":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 341
    .local v18, "colNickname":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 342
    .local v13, "colBirthday":I
    const-string v3, "data2"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 344
    .local v16, "colEventType":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_10

    .line 345
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v35, p1, -0x1

    move/from16 v0, v35

    if-gt v3, v0, :cond_f

    .line 347
    :try_start_0
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 348
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 351
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-nez v3, :cond_0

    .line 352
    move-object/from16 v29, v22

    .line 357
    :cond_0
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v3, p0

    .line 360
    invoke-direct/range {v3 .. v11}, Lorg/apache/cordova/ContactAccessorSdk5;->populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 364
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v4    # "contact":Lorg/json/JSONObject;
    .local v21, "contact":Lorg/json/JSONObject;
    :try_start_1
    new-instance v30, Lorg/json/JSONArray;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 366
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .local v30, "organizations":Lorg/json/JSONArray;
    :try_start_2
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 367
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .local v12, "addresses":Lorg/json/JSONArray;
    :try_start_3
    new-instance v31, Lorg/json/JSONArray;

    invoke-direct/range {v31 .. v31}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 368
    .end local v7    # "phones":Lorg/json/JSONArray;
    .local v31, "phones":Lorg/json/JSONArray;
    :try_start_4
    new-instance v25, Lorg/json/JSONArray;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONArray;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 369
    .end local v8    # "emails":Lorg/json/JSONArray;
    .local v25, "emails":Lorg/json/JSONArray;
    :try_start_5
    new-instance v26, Lorg/json/JSONArray;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONArray;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 370
    .end local v9    # "ims":Lorg/json/JSONArray;
    .local v26, "ims":Lorg/json/JSONArray;
    :try_start_6
    new-instance v34, Lorg/json/JSONArray;

    invoke-direct/range {v34 .. v34}, Lorg/json/JSONArray;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 371
    .end local v10    # "websites":Lorg/json/JSONArray;
    .local v34, "websites":Lorg/json/JSONArray;
    :try_start_7
    new-instance v32, Lorg/json/JSONArray;

    invoke-direct/range {v32 .. v32}, Lorg/json/JSONArray;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 374
    .end local v11    # "photos":Lorg/json/JSONArray;
    .local v32, "photos":Lorg/json/JSONArray;
    const/16 v28, 0x1

    move-object/from16 v11, v32

    .end local v32    # "photos":Lorg/json/JSONArray;
    .restart local v11    # "photos":Lorg/json/JSONArray;
    move-object/from16 v10, v34

    .end local v34    # "websites":Lorg/json/JSONArray;
    .restart local v10    # "websites":Lorg/json/JSONArray;
    move-object/from16 v9, v26

    .end local v26    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .line 379
    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    :cond_1
    if-eqz v28, :cond_2

    .line 380
    const/16 v28, 0x0

    .line 381
    :try_start_8
    const-string v3, "id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v3, "rawId"

    move-object/from16 v0, v33

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 388
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    const-string v3, "displayName"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    :cond_3
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 394
    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->nameQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    :cond_4
    :goto_1
    move-object/from16 v29, v22

    goto/16 :goto_0

    .line 396
    :cond_5
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "phoneNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->phoneQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 438
    :catch_0
    move-exception v24

    .line 439
    .local v24, "e":Lorg/json/JSONException;
    :goto_2
    const-string v3, "ContactsAccessor"

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 400
    .end local v24    # "e":Lorg/json/JSONException;
    :cond_6
    :try_start_9
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "emails"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->emailQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 404
    :cond_7
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "addresses"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->addressQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 408
    :cond_8
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "organizations"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->organizationQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 412
    :cond_9
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "ims"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->imQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 416
    :cond_a
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 418
    const-string v3, "note"

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 420
    :cond_b
    const-string v3, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 422
    const-string v3, "nickname"

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 424
    :cond_c
    const-string v3, "vnd.android.cursor.item/website"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "urls"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->websiteQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 428
    :cond_d
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 429
    const-string v3, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v0, v35

    if-ne v3, v0, :cond_4

    .line 431
    const-string v3, "birthday"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 434
    :cond_e
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "photos"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->photoQuery(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 448
    :cond_f
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, p1

    if-ge v3, v0, :cond_10

    move-object/from16 v3, p0

    .line 449
    invoke-direct/range {v3 .. v11}, Lorg/apache/cordova/ContactAccessorSdk5;->populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 453
    :cond_10
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 454
    return-object v23

    .line 438
    .end local v4    # "contact":Lorg/json/JSONObject;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    :catch_1
    move-exception v24

    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    :catch_2
    move-exception v24

    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    :catch_3
    move-exception v24

    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    :catch_4
    move-exception v24

    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v25    # "emails":Lorg/json/JSONArray;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    :catch_5
    move-exception v24

    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .end local v9    # "ims":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v25    # "emails":Lorg/json/JSONArray;
    .restart local v26    # "ims":Lorg/json/JSONArray;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    :catch_6
    move-exception v24

    move-object/from16 v9, v26

    .end local v26    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .end local v9    # "ims":Lorg/json/JSONArray;
    .end local v10    # "websites":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v25    # "emails":Lorg/json/JSONArray;
    .restart local v26    # "ims":Lorg/json/JSONArray;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    .restart local v34    # "websites":Lorg/json/JSONArray;
    :catch_7
    move-exception v24

    move-object/from16 v10, v34

    .end local v34    # "websites":Lorg/json/JSONArray;
    .restart local v10    # "websites":Lorg/json/JSONArray;
    move-object/from16 v9, v26

    .end local v26    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2
.end method

.method private websiteQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 876
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 878
    .local v1, "website":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 880
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/ContactAccessorSdk5;->getContactType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    return-object v1

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getContactById(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 287
    iget-object v0, p0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ? "

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    const-string v5, "contact_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 293
    .local v6, "c":Landroid/database/Cursor;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 294
    .local v8, "fields":Lorg/json/JSONArray;
    const-string v0, "*"

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 296
    invoke-virtual {p0, v8}, Lorg/apache/cordova/ContactAccessorSdk5;->buildPopulationSet(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v9

    .line 298
    .local v9, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0, v10, v9, v6}, Lorg/apache/cordova/ContactAccessorSdk5;->populateContactArray(ILjava/util/HashMap;Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v7

    .line 300
    .local v7, "contacts":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 301
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 303
    :cond_0
    return-object v2
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1777
    const/4 v8, 0x0

    .line 1778
    .local v8, "result":I
    iget-object v0, p0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1782
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1783
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1784
    const-string v0, "lookup"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1785
    .local v7, "lookupKey":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1786
    .local v9, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v9, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1791
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_0
    if-lez v8, :cond_1

    move v0, v10

    :goto_1
    return v0

    .line 1788
    :cond_0
    const-string v0, "ContactsAccessor"

    const-string v1, "Could not find contact with ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v11

    .line 1791
    goto :goto_1
.end method

.method public save(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 12
    .param p1, "contact"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 916
    iget-object v9, p0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 917
    .local v8, "mgr":Landroid/accounts/AccountManager;
    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 918
    .local v3, "accounts":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 919
    .local v1, "accountName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 921
    .local v2, "accountType":Ljava/lang/String;
    array-length v9, v3

    if-ne v9, v11, :cond_1

    .line 922
    aget-object v9, v3, v10

    iget-object v1, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 923
    aget-object v9, v3, v10

    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 953
    :cond_0
    :goto_0
    const-string v9, "id"

    invoke-virtual {p0, p1, v9}, Lorg/apache/cordova/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 955
    .local v6, "id":Ljava/lang/String;
    if-nez v6, :cond_7

    .line 956
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->createNewContact(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 960
    :goto_1
    return-object v9

    .line 925
    .end local v6    # "id":Ljava/lang/String;
    :cond_1
    array-length v9, v3

    if-le v9, v11, :cond_0

    .line 926
    move-object v4, v3

    .local v4, "arr$":[Landroid/accounts/Account;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_2

    aget-object v0, v4, v5

    .line 927
    .local v0, "a":Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v10, "eas"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v10, ".+@.+\\.+.+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 928
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 929
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 933
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_2
    if-nez v1, :cond_3

    .line 934
    move-object v4, v3

    array-length v7, v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v0, v4, v5

    .line 935
    .restart local v0    # "a":Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v10, "com.google"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v10, ".+@.+\\.+.+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 936
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 937
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 942
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_3
    if-nez v1, :cond_0

    .line 943
    move-object v4, v3

    array-length v7, v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_0

    aget-object v0, v4, v5

    .line 944
    .restart local v0    # "a":Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v10, ".+@.+\\.+.+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 945
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 946
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 947
    goto :goto_0

    .line 926
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 934
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 943
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 960
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v4    # "arr$":[Landroid/accounts/Account;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .restart local v6    # "id":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v6, p1, v2, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->modifyContact(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method public search(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 21
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 142
    const-string v19, ""

    .line 143
    .local v19, "searchTerm":Ljava/lang/String;
    const v16, 0x7fffffff

    .line 144
    .local v16, "limit":I
    const/16 v17, 0x1

    .line 146
    .local v17, "multiple":Z
    if-eqz p2, :cond_3

    .line 147
    const-string v3, "filter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 148
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 149
    const-string v19, "%"

    .line 156
    :goto_0
    :try_start_0
    const-string v3, "multiple"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 157
    if-nez v17, :cond_0

    .line 158
    const/16 v16, 0x1

    .line 174
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lorg/apache/cordova/ContactAccessorSdk5;->buildPopulationSet(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v18

    .line 177
    .local v18, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/ContactAccessorSdk5;->buildWhereClause(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/ContactAccessor$WhereOptions;

    move-result-object v20

    .line 180
    .local v20, "whereOptions":Lorg/apache/cordova/ContactAccessor$WhereOptions;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v5, v6

    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->getWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "contact_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 187
    .local v14, "idCursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 188
    .local v11, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v13, -0x1

    .line 189
    .local v13, "idColumn":I
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 190
    if-gez v13, :cond_1

    .line 191
    const-string v3, "contact_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 193
    :cond_1
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    .end local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "idColumn":I
    .end local v14    # "idCursor":Landroid/database/Cursor;
    .end local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v20    # "whereOptions":Lorg/apache/cordova/ContactAccessor$WhereOptions;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 165
    :cond_3
    const-string v19, "%"

    goto :goto_1

    .line 195
    .restart local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "idColumn":I
    .restart local v14    # "idCursor":Landroid/database/Cursor;
    .restart local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v20    # "whereOptions":Lorg/apache/cordova/ContactAccessor$WhereOptions;
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->buildIdClause(Ljava/util/Set;Ljava/lang/String;)Lorg/apache/cordova/ContactAccessor$WhereOptions;

    move-result-object v15

    .line 201
    .local v15, "idOptions":Lorg/apache/cordova/ContactAccessor$WhereOptions;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v10, "columnsToFetch":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "contact_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v3, "raw_contact_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v3, "mimetype"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v3, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 207
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_5
    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 210
    const-string v3, "data3"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v3, "data5"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v3, "data4"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v3, "data6"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_6
    const-string v3, "phoneNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 217
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_7
    const-string v3, "emails"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 222
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_8
    const-string v3, "addresses"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 227
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v3, "data4"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v3, "data7"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v3, "data8"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v3, "data9"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v3, "data10"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_9
    const-string v3, "organizations"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 237
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v3, "data5"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v3, "data4"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_a
    const-string v3, "ims"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 244
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_b
    const-string v3, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 249
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_c
    const-string v3, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 252
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_d
    const-string v3, "urls"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 255
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_e
    const-string v3, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 260
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_f
    const-string v3, "photos"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 264
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v15}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->getWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lorg/apache/cordova/ContactAccessor$WhereOptions;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "contact_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 274
    .local v9, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lorg/apache/cordova/ContactAccessorSdk5;->populateContactArray(ILjava/util/HashMap;Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v12

    .line 275
    .local v12, "contacts":Lorg/json/JSONArray;
    return-object v12

    .line 160
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "columnsToFetch":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "contacts":Lorg/json/JSONArray;
    .end local v13    # "idColumn":I
    .end local v14    # "idCursor":Landroid/database/Cursor;
    .end local v15    # "idOptions":Lorg/apache/cordova/ContactAccessor$WhereOptions;
    .end local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v20    # "whereOptions":Lorg/apache/cordova/ContactAccessor$WhereOptions;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method
