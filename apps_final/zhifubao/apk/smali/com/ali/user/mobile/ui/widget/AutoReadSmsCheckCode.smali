.class public Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;
.super Ljava/lang/Object;
.source "AutoReadSmsCheckCode.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:J

.field private e:J

.field private f:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCodeCallBack;

.field private g:J

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCodeCallBack;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->e:J

    .line 22
    iput-wide v2, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->g:J

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->b:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->c:Z

    .line 28
    iput-object p2, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->f:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCodeCallBack;

    .line 29
    iput-wide v2, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->g:J

    .line 30
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->h:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 114
    .line 117
    :try_start_0
    const-string/jumbo v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "date"

    aput-object v3, v2, v0

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 121
    const-string/jumbo v5, "_id desc limit 1"

    .line 120
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 123
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const-string/jumbo v0, "date"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 126
    const-string/jumbo v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->g:J

    .line 129
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 130
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 140
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_1
    :goto_0
    return-wide v0

    .line 135
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 140
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    move-object v2, v6

    .line 137
    :goto_1
    :try_start_3
    sget-object v1, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "can not read sms"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    .line 140
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    move-object v2, v6

    .line 140
    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_3
    throw v0

    .line 139
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 136
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 23

    .prologue
    .line 149
    const/4 v8, 0x0

    .line 150
    const/4 v9, 0x0

    .line 152
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 161
    const-string/jumbo v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 162
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v5, "address"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "person"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    .line 163
    const-string/jumbo v5, "body"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v5, "type"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v5, "protocol"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string/jumbo v5, "read"

    aput-object v5, v4, v2

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "address=95188"

    .line 166
    const/4 v6, 0x0

    const-string/jumbo v7, "date desc limit 5"

    .line 165
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 168
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 170
    const-string/jumbo v2, "address"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 172
    const-string/jumbo v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 176
    const-string/jumbo v2, "body"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 178
    const-string/jumbo v2, "date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 180
    const-string/jumbo v2, "type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 182
    const-string/jumbo v2, "protocol"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 184
    const/4 v2, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->b:Z

    if-nez v4, :cond_2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    sget-object v18, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "address:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v18, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "body:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->d:J

    move-wide/from16 v18, v0

    sub-long v18, v4, v18

    sget-object v20, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "date:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "mBaseTime:"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->d:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "ts=date - mBaseTime:"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "smsId:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->g:J

    move-wide/from16 v18, v0

    cmp-long v4, v4, v18

    if-gtz v4, :cond_4

    sget-object v4, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "mLastSmsId:"

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->g:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_0

    .line 191
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 192
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_3
    :goto_2
    return-object v2

    .line 184
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/4 v5, 0x0

    :goto_3
    move/from16 v0, v18

    if-lt v5, v0, :cond_5

    :goto_4
    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_1

    if-nez v17, :cond_1

    invoke-virtual {v10, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    aget-object v19, p2, v5

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v19

    if-eqz v19, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 188
    :catch_0
    move-exception v2

    move-object v3, v9

    .line 189
    :goto_5
    :try_start_3
    sget-object v4, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "can not read sms"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 192
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v2, v8

    .line 193
    goto :goto_2

    .line 190
    :catchall_0
    move-exception v2

    move-object v3, v9

    .line 191
    :goto_6
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 192
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_7
    throw v2

    .line 190
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 188
    :catch_1
    move-exception v2

    goto :goto_5

    :cond_8
    move-object v2, v8

    goto :goto_2

    :cond_9
    move-object v2, v8

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->c:Z

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->b:Z

    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;J)V
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->g:J

    return-void
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;J)V
    .locals 0

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->e:J

    return-void
.end method

.method static synthetic access$6(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;JJ)V
    .locals 5

    .prologue
    .line 79
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-boolean v3, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->b:Z

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p6

    cmp-long v3, v3, p8

    if-gez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x9c4

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p5, p1, p2, p3}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    const-string/jumbo v4, "read sms value is empty"

    invoke-static {v3, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->f:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCodeCallBack;

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCodeCallBack;->OnAutoReadSms(Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sms is:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->b:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->c:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->g:J

    .line 39
    return-void
.end method

.method public varargs readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 44
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->d:J

    .line 45
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->c:Z

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->c:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->b:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->g:J

    .line 51
    new-instance v0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;

    move-object v1, p0

    move v2, p4

    move-object v3, p6

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;-><init>(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
