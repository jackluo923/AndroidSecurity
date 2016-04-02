.class final Lcom/taobao/updatecenter/util/a;
.super Ljava/lang/Object;
.source "PackageLite.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/os/Bundle;

.field public final i:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/updatecenter/util/a;->i:Ljava/util/Set;

    .line 43
    return-void
.end method

.method private static a(Landroid/util/AttributeSet;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    move-object v2, v1

    move-object v3, v1

    move v1, v0

    .line 193
    :goto_0
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 194
    invoke-interface {p0, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 196
    invoke-interface {p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 202
    :cond_1
    :goto_1
    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_2
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    invoke-interface {p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 208
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_4
    return-object p1
.end method

.method protected static a(Ljava/io/File;)Lcom/taobao/updatecenter/util/a;
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 47
    .line 49
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 55
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 59
    :goto_0
    if-eqz v1, :cond_22

    .line 60
    :try_start_2
    const-string/jumbo v4, "AndroidManifest.xml"

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 62
    :goto_1
    if-eqz v1, :cond_21

    .line 63
    :try_start_3
    new-instance v0, Lcom/taobao/updatecenter/util/a;

    invoke-direct {v0}, Lcom/taobao/updatecenter/util/a;-><init>()V

    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    if-eq v4, v8, :cond_1

    if-ne v4, v10, :cond_0

    :cond_1
    if-eq v4, v8, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "hotpatch"

    const-string/jumbo v4, "No start tag found"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    .line 68
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 69
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 72
    :cond_3
    :goto_3
    return-object v0

    :catch_0
    move-exception v1

    move v1, v3

    goto :goto_0

    .line 63
    :cond_4
    :try_start_4
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "hotpatch"

    const-string/jumbo v4, "No <manifest> tag"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    const-string/jumbo v5, "package"

    invoke-interface {v1, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/taobao/updatecenter/util/a;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/taobao/updatecenter/util/a;->a:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/taobao/updatecenter/util/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "hotpatch"

    const-string/jumbo v4, "<manifest> does not specify package"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_7
    move v5, v3

    move v4, v3

    :goto_4
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "versionCode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    iput v6, v0, Lcom/taobao/updatecenter/util/a;->b:I

    add-int/lit8 v4, v4, 0x1

    :cond_8
    :goto_5
    if-ge v4, v8, :cond_a

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    const-string/jumbo v7, "versionName"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/taobao/updatecenter/util/a;->c:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_b
    :goto_6
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-eq v5, v10, :cond_2

    if-ne v5, v11, :cond_c

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-lt v6, v4, :cond_2

    :cond_c
    if-eq v5, v11, :cond_b

    const/4 v6, 0x4

    if-eq v5, v6, :cond_b

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "application"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, v0, Lcom/taobao/updatecenter/util/a;->a:Ljava/lang/String;

    move v4, v3

    :goto_7
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v4, v3, :cond_18

    invoke-interface {v1, v4}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "name"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gtz v6, :cond_f

    :cond_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v6, "hotpatch"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Empty class name in package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    :goto_8
    iput-object v3, v0, Lcom/taobao/updatecenter/util/a;->d:Ljava/lang/String;

    :cond_e
    :goto_9
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7

    :cond_f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_10
    const/16 v7, 0x2e

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_11
    const/16 v7, 0x61

    if-lt v6, v7, :cond_12

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_12
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "hotpatch"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Bad class name "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " in package "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_8

    :cond_13
    const-string/jumbo v6, "icon"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v3, 0x0

    invoke-interface {v1, v4, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v3

    iput v3, v0, Lcom/taobao/updatecenter/util/a;->e:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_9

    .line 65
    :catch_1
    move-exception v0

    .line 66
    :goto_a
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "hotpatch"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    if-eqz v1, :cond_14

    .line 69
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14
    :goto_b
    move-object v0, v2

    .line 72
    goto/16 :goto_3

    .line 63
    :cond_15
    :try_start_6
    const-string/jumbo v6, "label"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v3, 0x0

    invoke-interface {v1, v4, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v3

    iput v3, v0, Lcom/taobao/updatecenter/util/a;->f:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_9

    .line 68
    :catchall_0
    move-exception v0

    :goto_c
    if-eqz v1, :cond_16

    .line 69
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_16
    throw v0

    .line 63
    :cond_17
    :try_start_7
    const-string/jumbo v6, "description"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    invoke-interface {v1, v4, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v3

    iput v3, v0, Lcom/taobao/updatecenter/util/a;->g:I

    goto/16 :goto_9

    :cond_18
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_19
    :goto_d
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v10, :cond_2

    if-ne v4, v11, :cond_1a

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_2

    :cond_1a
    if-eq v4, v11, :cond_19

    const/4 v5, 0x4

    if-eq v4, v5, :cond_19

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v4, v0, Lcom/taobao/updatecenter/util/a;->h:Landroid/os/Bundle;

    invoke-static {v1, v4}, Lcom/taobao/updatecenter/util/a;->a(Landroid/util/AttributeSet;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v0, Lcom/taobao/updatecenter/util/a;->h:Landroid/os/Bundle;

    goto :goto_d

    :cond_1b
    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v0, v1}, Lcom/taobao/updatecenter/util/a;->a(Lcom/taobao/updatecenter/util/a;Landroid/util/AttributeSet;)V

    goto :goto_d

    :cond_1c
    const-string/jumbo v5, "receiver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v0, v1}, Lcom/taobao/updatecenter/util/a;->a(Lcom/taobao/updatecenter/util/a;Landroid/util/AttributeSet;)V

    goto :goto_d

    :cond_1d
    const-string/jumbo v5, "service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static {v0, v1}, Lcom/taobao/updatecenter/util/a;->a(Lcom/taobao/updatecenter/util/a;Landroid/util/AttributeSet;)V

    goto :goto_d

    :cond_1e
    const-string/jumbo v5, "provider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v0, v1}, Lcom/taobao/updatecenter/util/a;->a(Lcom/taobao/updatecenter/util/a;Landroid/util/AttributeSet;)V

    goto :goto_d

    :cond_1f
    invoke-static {v1}, Lcom/taobao/updatecenter/util/a;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d

    :cond_20
    invoke-static {v1}, Lcom/taobao/updatecenter/util/a;->a(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    .line 68
    :cond_21
    if-eqz v1, :cond_14

    .line 69
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_b

    .line 68
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_c

    .line 65
    :catch_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a

    :cond_22
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private static a(Lcom/taobao/updatecenter/util/a;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-object v3, p0, Lcom/taobao/updatecenter/util/a;->a:Ljava/lang/String;

    move v1, v0

    .line 247
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 248
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    const-string/jumbo v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 251
    const-string/jumbo v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {v3, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    :cond_0
    iget-object v4, p0, Lcom/taobao/updatecenter/util/a;->i:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v1, v1, 0x1

    .line 257
    :cond_1
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_2
    return-void
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    .line 237
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 239
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 242
    :cond_1
    return-void
.end method
