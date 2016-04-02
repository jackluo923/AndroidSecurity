.class Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/ViewServer;

.field private b:Ljava/net/Socket;

.field private c:Z

.field private d:Z

.field private final e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/ui/ViewServer;Ljava/net/Socket;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    .line 567
    iput-object p2, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    .line 568
    iput-boolean v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    .line 569
    iput-boolean v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    .line 570
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 686
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 709
    :goto_0
    return-object v0

    .line 691
    :catchall_0
    move-exception v0

    .line 692
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 693
    throw v0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 700
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->c(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 706
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 709
    const/4 v0, 0x0

    goto :goto_0

    .line 700
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 701
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 702
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 706
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 705
    :catchall_1
    move-exception v0

    .line 706
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 707
    throw v0
.end method

.method private a(Ljava/net/Socket;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 713
    const/4 v1, 0x1

    .line 714
    const/4 v0, 0x0

    .line 717
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v3}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 719
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 720
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->c(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    const-string/jumbo v0, "DONE.\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 734
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 736
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    .line 745
    :goto_1
    return v0

    .line 722
    :cond_0
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 723
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 724
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 725
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 726
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 734
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 736
    if-eqz v0, :cond_2

    .line 738
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v2

    goto :goto_1

    .line 740
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    .line 733
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 734
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 736
    if-eqz v3, :cond_1

    .line 738
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 740
    :cond_1
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 733
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 732
    :catch_4
    move-exception v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private a(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 631
    .line 632
    const/4 v2, 0x0

    .line 636
    const/16 v3, 0x20

    :try_start_0
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 637
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 638
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 640
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 641
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    .line 644
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 645
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 650
    :goto_0
    invoke-direct {p0, v4}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a(I)Landroid/view/View;

    move-result-object v3

    .line 651
    if-nez v3, :cond_2

    .line 682
    :goto_1
    return v1

    .line 647
    :cond_1
    const-string/jumbo p3, ""

    goto :goto_0

    .line 656
    :cond_2
    const-class v4, Landroid/view/ViewDebug;

    const-string/jumbo v5, "dispatchCommand"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 657
    const-class v8, Landroid/view/View;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/io/OutputStream;

    aput-object v8, v6, v7

    .line 656
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 658
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 659
    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p2, v6, v3

    const/4 v3, 0x2

    aput-object p3, v6, v3

    const/4 v3, 0x3

    .line 660
    new-instance v7, Lcom/alipay/android/app/template/ui/ViewServer$UncloseableOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alipay/android/app/template/ui/ViewServer$UncloseableOutputStream;-><init>(Ljava/io/OutputStream;)V

    aput-object v7, v6, v3

    .line 659
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_6

    .line 663
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :try_start_1
    const-string/jumbo v2, "DONE\n"

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 673
    :goto_2
    if-eqz v3, :cond_3

    .line 675
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    move v1, v0

    .line 682
    goto :goto_1

    .line 669
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_4
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not send command "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 670
    const-string/jumbo v3, " with parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 673
    if-eqz v0, :cond_5

    .line 675
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v1

    goto :goto_3

    .line 677
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_3

    .line 672
    :catchall_0
    move-exception v0

    .line 673
    :goto_5
    if-eqz v2, :cond_4

    .line 675
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 677
    :cond_4
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_6

    .line 672
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    .line 669
    :catch_4
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move-object v3, v2

    goto :goto_2
.end method

.method private b(Ljava/net/Socket;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 749
    const/4 v1, 0x1

    .line 750
    const/4 v0, 0x0

    .line 754
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 755
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 757
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->d(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 761
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 763
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->d(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 766
    if-eqz v4, :cond_0

    .line 767
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 769
    :try_start_4
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->c(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v5}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 771
    :try_start_5
    iget-object v5, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v5}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 774
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 775
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 776
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 778
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 779
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 783
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move v0, v1

    .line 792
    :goto_0
    return v0

    .line 762
    :catchall_0
    move-exception v0

    .line 763
    :try_start_7
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->d(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 764
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 781
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 783
    :goto_1
    if-eqz v0, :cond_2

    .line 785
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move v0, v2

    goto :goto_0

    .line 770
    :catchall_1
    move-exception v0

    .line 771
    :try_start_9
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 772
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 782
    :catchall_2
    move-exception v0

    .line 783
    :goto_2
    if-eqz v3, :cond_1

    .line 785
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 787
    :cond_1
    :goto_3
    throw v0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 782
    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    .line 781
    :catch_4
    move-exception v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private c()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 810
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V

    .line 811
    const/4 v0, 0x0

    .line 813
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 814
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 849
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V

    .line 851
    :goto_2
    return v2

    .line 817
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 818
    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    if-eqz v0, :cond_5

    .line 821
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    if-eqz v0, :cond_8

    .line 822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    move v4, v2

    .line 825
    :goto_4
    iget-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    if-eqz v0, :cond_7

    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    move v0, v2

    .line 817
    :goto_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 830
    if-eqz v4, :cond_3

    .line 831
    :try_start_5
    const-string/jumbo v4, "LIST UPDATE\n"

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 834
    :cond_3
    if-eqz v0, :cond_0

    .line 835
    const-string/jumbo v0, "FOCUS UPDATE\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 840
    :goto_6
    if-eqz v0, :cond_4

    .line 844
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 849
    :cond_4
    :goto_7
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V

    goto :goto_2

    .line 819
    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 817
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v5

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 841
    :catchall_1
    move-exception v0

    .line 842
    :goto_8
    if-eqz v1, :cond_6

    .line 844
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 849
    :cond_6
    :goto_9
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V

    .line 850
    throw v0

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_1

    .line 841
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_6

    :cond_7
    move v0, v3

    goto :goto_5

    :cond_8
    move v4, v3

    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 796
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    monitor-enter v1

    .line 797
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    .line 798
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 796
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 803
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    monitor-enter v1

    .line 804
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    .line 805
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 803
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 573
    const/4 v1, 0x0

    .line 575
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 582
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 583
    const/4 v2, -0x1

    if-ne v3, v2, :cond_2

    .line 585
    const-string/jumbo v2, ""

    .line 592
    :goto_0
    const-string/jumbo v3, "PROTOCOL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 593
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    const-string/jumbo v2, "4"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Ljava/net/Socket;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 606
    :goto_1
    if-nez v1, :cond_0

    .line 612
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 620
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 622
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 628
    :cond_1
    :goto_3
    return-void

    .line 587
    :cond_2
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 588
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 594
    :cond_3
    const-string/jumbo v3, "SERVER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 595
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    const-string/jumbo v2, "4"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 596
    :cond_4
    const-string/jumbo v3, "LIST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 597
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a(Ljava/net/Socket;)Z

    move-result v1

    goto :goto_1

    .line 598
    :cond_5
    const-string/jumbo v3, "GET_FOCUS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 599
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b(Ljava/net/Socket;)Z

    move-result v1

    goto :goto_1

    .line 600
    :cond_6
    const-string/jumbo v3, "AUTOLIST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 601
    invoke-direct {p0}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c()Z

    move-result v1

    goto :goto_1

    .line 603
    :cond_7
    iget-object v3, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-direct {p0, v3, v1, v2}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 610
    :goto_4
    if-eqz v0, :cond_8

    .line 614
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 620
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 622
    :try_start_6
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 623
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 616
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 611
    :catchall_0
    move-exception v0

    .line 612
    :goto_6
    if-eqz v1, :cond_9

    .line 614
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 620
    :cond_9
    :goto_7
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    if-eqz v1, :cond_a

    .line 622
    :try_start_8
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 627
    :cond_a
    :goto_8
    throw v0

    .line 616
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 623
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 616
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 623
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 611
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_4
.end method
