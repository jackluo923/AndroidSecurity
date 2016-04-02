.class public Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/content/SharedPreferences;

.field private g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

.field private h:Landroid/content/SharedPreferences$Editor;

.field private i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

.field private j:Landroid/content/Context;

.field private k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    iput-boolean p4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->c:Z

    iput-boolean p5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    iput-object p3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "t"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    iput-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    :goto_0
    iget-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    if-eqz v4, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string/jumbo v5, "t"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    if-nez p5, :cond_b

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_6

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    if-eqz v6, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "t2"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    const-string/jumbo v1, "t2"

    invoke-interface {v0, v1, v4, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string/jumbo v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    iput-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->d:Z

    goto/16 :goto_0

    :cond_9
    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    :try_start_2
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-static {v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    const/4 v4, 0x0

    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    goto :goto_1

    :catch_0
    move-exception v4

    move-wide v4, v0

    move-wide v0, v2

    :goto_3
    move-wide v2, v0

    move-wide v0, v4

    goto :goto_1

    :cond_a
    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "t2"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v4

    :try_start_3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string/jumbo v1, "t2"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v0

    cmp-long v2, v4, v0

    if-gez v2, :cond_c

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_c

    :try_start_4
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-wide v2, v0

    move-wide v0, v4

    goto/16 :goto_1

    :cond_c
    cmp-long v2, v4, v0

    if-lez v2, :cond_d

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-static {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    move-wide v2, v0

    move-wide v0, v4

    goto/16 :goto_1

    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_e

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-static {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    move-wide v2, v0

    move-wide v0, v4

    goto/16 :goto_1

    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_f

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-wide v2, v0

    move-wide v0, v4

    goto/16 :goto_1

    :cond_f
    cmp-long v2, v4, v0

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_10
    move-wide v2, v4

    :goto_4
    move-wide v8, v0

    move-wide v0, v2

    move-wide v2, v8

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-wide v0, v2

    goto/16 :goto_3

    :catch_3
    move-exception v2

    goto/16 :goto_3

    :cond_11
    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto :goto_4
.end method

.method private a(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "%s%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    :cond_1
    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
    .locals 6

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    :cond_1
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    :cond_2
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    :cond_3
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    :cond_4
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    :cond_6
    return-void
.end method

.method private static a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 6

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->checkFile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "t"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    const-string/jumbo v3, "t"

    invoke-interface {v2, v3, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public commit()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "t"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-boolean v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->l:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {v1, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    :goto_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_3
    :goto_1
    const-string/jumbo v1, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_5

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    return v0

    :cond_6
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-static {v1, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a()Z

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public reload()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->f:Landroid/content/SharedPreferences;

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->k:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->g:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->b()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->i:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method
