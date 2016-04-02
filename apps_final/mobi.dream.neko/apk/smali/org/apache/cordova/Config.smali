.class public Lorg/apache/cordova/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Config"

.field private static self:Lorg/apache/cordova/Config;


# instance fields
.field private startUrl:Ljava/lang/String;

.field private whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private whiteListCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/Config;->whiteListCache:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 21
    .param p1, "action"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    .line 48
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/Config;->whiteListCache:Ljava/util/HashMap;

    .line 70
    if-nez p1, :cond_1

    .line 71
    const-string v17, "CordovaLog"

    const-string v18, "There is no activity. Is this on the lock screen?"

    invoke-static/range {v17 .. v18}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "config"

    const-string v19, "xml"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 76
    .local v5, "id":I
    if-nez v5, :cond_2

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "config"

    const-string v19, "xml"

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 79
    :cond_2
    if-nez v5, :cond_3

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "cordova"

    const-string v19, "xml"

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 81
    const-string v17, "CordovaLog"

    const-string v18, "config.xml missing, reverting to cordova.xml"

    invoke-static/range {v17 .. v18}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_3
    if-nez v5, :cond_4

    .line 84
    const-string v17, "CordovaLog"

    const-string v18, "cordova.xml missing. Ignoring..."

    invoke-static/range {v17 .. v18}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 89
    .local v16, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v4, -0x1

    .line 90
    .local v4, "eventType":I
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_0

    .line 91
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    .line 92
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, "strNode":Ljava/lang/String;
    const-string v17, "access"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 95
    const/16 v17, 0x0

    const-string v18, "origin"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "origin":Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "subdomains"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 97
    .local v14, "subdomains":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 98
    if-eqz v14, :cond_6

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lorg/apache/cordova/Config;->_addWhiteListEntry(Ljava/lang/String;Z)V

    .line 187
    .end local v9    # "origin":Ljava/lang/String;
    .end local v13    # "strNode":Ljava/lang/String;
    .end local v14    # "subdomains":Ljava/lang/String;
    :cond_5
    :goto_3
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_1

    .line 98
    .restart local v9    # "origin":Ljava/lang/String;
    .restart local v13    # "strNode":Ljava/lang/String;
    .restart local v14    # "subdomains":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    goto :goto_2

    .line 101
    .end local v9    # "origin":Ljava/lang/String;
    .end local v14    # "subdomains":Ljava/lang/String;
    :cond_7
    const-string v17, "log"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 102
    const/16 v17, 0x0

    const-string v18, "level"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "level":Ljava/lang/String;
    const-string v17, "Config"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The <log> tags is deprecated. Use <preference name=\"loglevel\" value=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\"/> instead."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v6, :cond_5

    .line 105
    invoke-static {v6}, Lorg/apache/cordova/api/LOG;->setLogLevel(Ljava/lang/String;)V

    goto :goto_3

    .line 108
    .end local v6    # "level":Ljava/lang/String;
    :cond_8
    const-string v17, "preference"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 109
    const/16 v17, 0x0

    const-string v18, "name"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "name":Ljava/lang/String;
    const-string v17, "LogLevel"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 120
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .restart local v6    # "level":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/cordova/api/LOG;->setLogLevel(Ljava/lang/String;)V

    goto :goto_3

    .line 122
    .end local v6    # "level":Ljava/lang/String;
    :cond_9
    const-string v17, "SplashScreen"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 123
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 124
    .local v15, "value":Ljava/lang/String;
    const/4 v10, 0x0

    .line 125
    .local v10, "resource":I
    if-nez v15, :cond_a

    .line 127
    const-string v15, "splash"

    .line 129
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "drawable"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 133
    .end local v10    # "resource":I
    .end local v15    # "value":Ljava/lang/String;
    :cond_b
    const-string v17, "BackgroundColor"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 134
    const/16 v17, 0x0

    const-string v18, "value"

    const/high16 v19, -0x1000000

    invoke-interface/range {v16 .. v19}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 135
    .local v15, "value":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 137
    .end local v15    # "value":I
    :cond_c
    const-string v17, "LoadUrlTimeoutValue"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 138
    const/16 v17, 0x0

    const-string v18, "value"

    const/16 v19, 0x4e20

    invoke-interface/range {v16 .. v19}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 139
    .restart local v15    # "value":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 141
    .end local v15    # "value":I
    :cond_d
    const-string v17, "KeepRunning"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 143
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 144
    .local v15, "value":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 146
    .end local v15    # "value":Z
    :cond_e
    const-string v17, "InAppBrowserStorageEnabled"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 148
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 149
    .restart local v15    # "value":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 151
    .end local v15    # "value":Z
    :cond_f
    const-string v17, "DisallowOverscroll"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 153
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 154
    .restart local v15    # "value":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 158
    .end local v15    # "value":Z
    :cond_10
    const/16 v17, 0x0

    const-string v18, "value"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 159
    .local v15, "value":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 165
    .end local v8    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_11
    const-string v17, "content"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 166
    const/16 v17, 0x0

    const-string v18, "src"

    invoke-interface/range {v16 .. v18}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, "src":Ljava/lang/String;
    const-string v17, "CordovaLog"

    const-string v18, "Found start page location: %s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    invoke-static/range {v17 .. v19}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    if-eqz v12, :cond_5

    .line 171
    const-string v17, "^[a-z-]+://"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 172
    .local v11, "schemeRegex":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 173
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 174
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/cordova/Config;->startUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 176
    :cond_12
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 177
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 179
    :cond_13
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file:///android_asset/www/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/Config;->startUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 188
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v11    # "schemeRegex":Ljava/util/regex/Pattern;
    .end local v12    # "src":Ljava/lang/String;
    .end local v13    # "strNode":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    .line 190
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v3

    .line 191
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private _addWhiteListEntry(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "subdomains"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 227
    :try_start_0
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 228
    const-string v3, "Config"

    const-string v4, "Unlimited access to network resources"

    invoke-static {v3, v4}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    const-string v4, ".*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/Config;->originHasWildcard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    const/4 p2, 0x1

    .line 237
    const-string v3, "*."

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 241
    :cond_1
    const-string v3, "^[a-z-]+://"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 242
    .local v2, "schemeRegex":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 243
    .local v1, "matcher":Ljava/util/regex/Matcher;
    if-eqz p2, :cond_4

    .line 245
    const-string v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iget-object v3, p0, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    const-string v4, "https?://"

    const-string v5, "^https?://(.*\\.)?"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :goto_1
    const-string v3, "Config"

    const-string v4, "Origin to allow with subdomains: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "schemeRegex":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Config"

    const-string v4, "Failed to add origin %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "schemeRegex":Ljava/util/regex/Pattern;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    iget-object v3, p0, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "//"

    const-string v6, "//(.*\\.)?"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_3
    iget-object v3, p0, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^https?://(.*\\.)?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :cond_4
    const-string v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 260
    iget-object v3, p0, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    const-string v4, "https?://"

    const-string v5, "^https?://"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :goto_2
    const-string v3, "Config"

    const-string v4, "Origin to allow: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 263
    :cond_5
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 264
    iget-object v3, p0, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    :cond_6
    iget-object v3, p0, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^https?://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static addWhiteListEntry(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "subdomains"    # Z

    .prologue
    .line 203
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/Config;->_addWhiteListEntry(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getStartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    iget-object v0, v0, Lorg/apache/cordova/Config;->startUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    const-string v0, "file:///android_asset/www/index.html"

    .line 314
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    iget-object v0, v0, Lorg/apache/cordova/Config;->startUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/apache/cordova/Config;

    invoke-direct {v0}, Lorg/apache/cordova/Config;-><init>()V

    sput-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    .line 63
    :cond_0
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "action"    # Landroid/app/Activity;

    .prologue
    .line 55
    new-instance v0, Lorg/apache/cordova/Config;

    invoke-direct {v0, p0}, Lorg/apache/cordova/Config;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    .line 56
    return-void
.end method

.method public static isUrlWhiteListed(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 286
    sget-object v5, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    if-nez v5, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v3

    .line 291
    :cond_1
    sget-object v5, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    iget-object v5, v5, Lorg/apache/cordova/Config;->whiteListCache:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 292
    goto :goto_0

    .line 296
    :cond_2
    sget-object v5, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    iget-object v5, v5, Lorg/apache/cordova/Config;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 297
    .local v2, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/regex/Pattern;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 299
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 302
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 303
    sget-object v3, Lorg/apache/cordova/Config;->self:Lorg/apache/cordova/Config;

    iget-object v3, v3, Lorg/apache/cordova/Config;->whiteListCache:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 304
    goto :goto_0
.end method

.method private originHasWildcard(Ljava/lang/String;)Z
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p1, v0, v1

    .line 221
    :cond_0
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
