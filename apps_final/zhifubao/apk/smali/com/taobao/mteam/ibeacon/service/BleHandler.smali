.class public Lcom/taobao/mteam/ibeacon/service/BleHandler;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:Z

.field private j:J

.field private k:Landroid/content/Context;

.field private l:Lcom/taobao/mteam/ibeacon/service/BleHandler$UpdateNotifier;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/taobao/mteam/ibeacon/service/b;

.field private final o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    iput-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b:Z

    iput-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->c:Z

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->d:J

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->e:J

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->f:J

    iput v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->g:I

    iput v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->h:I

    iput-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->i:Z

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->j:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->k:Landroid/content/Context;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/b;

    invoke-direct {v0, p0, v1}, Lcom/taobao/mteam/ibeacon/service/b;-><init>(Lcom/taobao/mteam/ibeacon/service/BleHandler;B)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->n:Lcom/taobao/mteam/ibeacon/service/b;

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/a;

    invoke-direct {v0, p0}, Lcom/taobao/mteam/ibeacon/service/a;-><init>(Lcom/taobao/mteam/ibeacon/service/BleHandler;)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->k:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->f()V

    return-void
.end method

.method static synthetic a(Lcom/taobao/mteam/ibeacon/service/BleHandler;J)V
    .locals 0

    iput-wide p1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->d:J

    return-void
.end method

.method static synthetic a(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/taobao/mteam/ibeacon/service/BleHandler;J)V
    .locals 0

    iput-wide p1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->e:J

    return-void
.end method

.method static synthetic b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    return v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->l:Lcom/taobao/mteam/ibeacon/service/BleHandler$UpdateNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->l:Lcom/taobao/mteam/ibeacon/service/BleHandler$UpdateNotifier;

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->j:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->e()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/taobao/mteam/ibeacon/service/BleHandler;)V
    .locals 2

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "Recovery attempt finished"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b:Z

    return-void
.end method

.method private d()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iget v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->h:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "about to check if discovery is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Recovery attempt started"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->c:Z

    iget-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "about to command discovery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Can\'t start discovery.  Is bluetooth turned on?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothCrashResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startDiscovery commanded.  isDiscovering()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "We will be cancelling this discovery in 5000 milliseconds."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->n:Lcom/taobao/mteam/ibeacon/service/b;

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/service/b;->a()Ljava/lang/Void;

    :goto_0
    return-void

    :cond_5
    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "Already discovering.  Recovery attempt abandoned."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/taobao/mteam/ibeacon/service/BleHandler;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->c:Z

    return-void
.end method

.method static synthetic e(Lcom/taobao/mteam/ibeacon/service/BleHandler;)J
    .locals 2

    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->e:J

    return-wide v0
.end method

.method private e()V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->j:J

    :try_start_0
    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->k:Landroid/content/Context;

    const-string/jumbo v2, "BluetoothCrashResolverState.txt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->i:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1\n"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothCrashResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bluetooth addresses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_4
    const-string/jumbo v0, "0\n"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_7
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Can\'t write macs to BluetoothCrashResolverState.txt"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_4
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method static synthetic f(Lcom/taobao/mteam/ibeacon/service/BleHandler;)J
    .locals 2

    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->d:J

    return-wide v0
.end method

.method private f()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->k:Landroid/content/Context;

    const-string/jumbo v2, "BluetoothCrashResolverState.txt"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->f:J

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->g:I

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->h:I

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->i:Z

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->i:Z

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-nez v1, :cond_6

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "BluetoothCrashResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bluetooth addresses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_4
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Can\'t read macs from BluetoothCrashResolverState.txt"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_6
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Can\'t parse file BluetoothCrashResolverState.txt"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_7
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic g(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->c:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "started listening for BluetoothAdapter events"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    rem-int/lit8 v0, v1, 0x64

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothCrashResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Distinct bluetooth devices seen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x636

    if-le v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "BluetoothCrashResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Large number of bluetooth devices detected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Proactively attempting to clear out address list to prevent a crash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "Stopping LE Scan"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->d()V

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->c()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "Ignoring crashes before SDK 18, because BLE is unsupported."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "BluetoothService crash detected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothCrashResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Distinct bluetooth devices seen at crash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->m:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->f:J

    iget v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->g:I

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "Ignoring bluetooth crash because recovery is already in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->c()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->d()V

    goto :goto_1
.end method
