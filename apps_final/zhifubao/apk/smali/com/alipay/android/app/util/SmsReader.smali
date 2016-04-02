.class public Lcom/alipay/android/app/util/SmsReader;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/util/SmsReader;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 21

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alipay/android/app/util/SmsReader;->b:J

    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    const-string/jumbo v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/16 v3, 0x8

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string/jumbo v6, "address"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string/jumbo v6, "person"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string/jumbo v6, "body"

    aput-object v6, v5, v3

    const/4 v3, 0x4

    const-string/jumbo v6, "date"

    aput-object v6, v5, v3

    const/4 v3, 0x5

    const-string/jumbo v6, "date_sent"

    aput-object v6, v5, v3

    const/4 v3, 0x6

    const-string/jumbo v6, "type"

    aput-object v6, v5, v3

    const/4 v3, 0x7

    const-string/jumbo v6, "protocol"

    aput-object v6, v5, v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "date desc limit 5"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "address"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v3, "body"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v3, "date"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v3, "date_sent"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string/jumbo v3, "type"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v3, "protocol"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const/4 v3, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alipay/android/app/util/SmsReader;->a:Z

    if-nez v5, :cond_3

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/app/util/SmsReader;->b:J

    move-wide/from16 v18, v0

    sub-long v5, v5, v18

    const-wide/16 v18, 0x0

    cmp-long v5, v5, v18

    if-lez v5, :cond_2

    const/4 v5, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    aget-object v19, p2, v6

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_2

    if-nez v17, :cond_2

    invoke-virtual {v11, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v3, v10

    :goto_3
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v4, v10

    :goto_4
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    :catchall_1
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v3, v4

    goto :goto_3

    :cond_7
    move-object v3, v9

    goto :goto_2

    :cond_8
    move-object v3, v9

    goto :goto_1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/util/SmsReader;->a:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/util/SmsReader;->a:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/util/SmsReader;->a:Z

    return v0
.end method
