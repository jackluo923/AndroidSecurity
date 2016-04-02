.class public Lcom/alipay/mobile/quinox/utils/CfgUtil;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "CfgUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleFilePath(Ljava/io/BufferedInputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->getBundleFilePath(Ljava/io/BufferedInputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleFilePath(Ljava/io/BufferedInputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/alipay/mobile/quinox/utils/CfgUtil$1;

    invoke-direct {v2, p1, p2, v1}, Lcom/alipay/mobile/quinox/utils/CfgUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {p0, v0, v2}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->readBundlesFromCfg(Ljava/io/BufferedInputStream;Ljava/util/Map;Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static readBundlesFromCfg(Ljava/io/BufferedInputStream;Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->readBundlesFromCfg(Ljava/io/BufferedInputStream;Ljava/util/Map;Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;)V

    return-void
.end method

.method public static readBundlesFromCfg(Ljava/io/BufferedInputStream;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->readBundlesFromCfg(Ljava/io/BufferedInputStream;Ljava/util/Map;Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;)V

    return-void
.end method

.method private static declared-synchronized readBundlesFromCfg(Ljava/io/BufferedInputStream;Ljava/util/Map;Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;)V
    .locals 6

    const/4 v0, 0x0

    const-class v2, Lcom/alipay/mobile/quinox/utils/CfgUtil;

    monitor-enter v2

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_4

    new-instance v4, Lcom/alipay/mobile/quinox/bundle/a;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/alipay/mobile/quinox/bundle/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/io/BufferedInputStream;)V

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, v4}, Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;->onBundleReadFromCfg(Lcom/alipay/mobile/quinox/bundle/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static readCfg(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized writeBundlesToCfg(Ljava/io/BufferedOutputStream;Ljava/util/Collection;)V
    .locals 3

    const-class v1, Lcom/alipay/mobile/quinox/utils/CfgUtil;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/io/BufferedOutputStream;)V

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method
