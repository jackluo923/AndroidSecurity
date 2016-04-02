.class public final Lcom/alipay/mobile/quinox/bundle/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:[Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:Ljava/util/Set;

.field private mName:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:I

    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->m:Ljava/util/Set;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/a;->m:Ljava/util/Set;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Ljava/util/jar/JarFile;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "META-INF/BUNDLE.MF"

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    const-string/jumbo v0, "Bundle-Name"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->mName:Ljava/lang/String;

    const-string/jumbo v0, "Bundle-Version"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    const-string/jumbo v0, "Init-Level"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->mName:Ljava/lang/String;

    const-string/jumbo v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    const-string/jumbo v0, "Package-Name"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->f:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "Activity-Name"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string/jumbo v4, "Service-Name"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string/jumbo v4, "Receiver-Name"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string/jumbo v4, "Provider-Name"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->g:[Ljava/lang/String;

    const-string/jumbo v0, "Package-Id"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v4, "Contains-Dex"

    invoke-direct {v0, v4}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "Contains-Dex"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    const-string/jumbo v0, "Contains-Res"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Z

    const-string/jumbo v0, "Native-Library"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:[Ljava/lang/String;

    :goto_0
    const-string/jumbo v0, "Require-Bundle"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/a;->b([Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_4
    const-string/jumbo v0, "resources.arsc"

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-boolean v6, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Z

    :cond_5
    const-string/jumbo v0, "classes.dex"

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-boolean v6, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    :cond_6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StreamUtils"

    const-string/jumbo v2, "closeSafely(Closeable): Exception occur."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Ljava/io/BufferedInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:I

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->mName:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->mName:Ljava/lang/String;

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->f:[Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->g:[Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Z

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:[Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/a;->b([Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/io/BufferedOutputStream;)V
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->a:I

    invoke-virtual {p1, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->f:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->g:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Z

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->mName:Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->mName:Ljava/lang/String;

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, p1, v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->f:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, p1, v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->g:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->h:Ljava/lang/String;

    array-length v0, p1

    if-le v0, v4, :cond_0

    aget-object v0, p1, v4

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    :cond_0
    array-length v0, p1

    if-le v0, v5, :cond_1

    aget-object v0, p1, v5

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Z

    :cond_1
    array-length v0, p1

    if-le v0, v6, :cond_2

    aget-object v0, p1, v6

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:[Ljava/lang/String;

    :goto_0
    array-length v0, p1

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    const/16 v0, 0xa

    aget-object v0, p1, v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/a;->b([Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/a;->b([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/alipay/mobile/quinox/bundle/a;

    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    iget v1, p1, Lcom/alipay/mobile/quinox/bundle/a;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->i:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->j:Z

    return v0
.end method

.method public final i()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final k()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->m:Ljava/util/Set;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/a;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "name=%s, version=%s, path=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/a;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
