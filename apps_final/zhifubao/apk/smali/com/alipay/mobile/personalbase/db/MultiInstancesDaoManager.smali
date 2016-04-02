.class public Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;
.super Ljava/lang/Object;
.source "MultiInstancesDaoManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)TD;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTable;

    .line 59
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v3, v4, :cond_1

    :cond_0
    move-object v0, v2

    .line 80
    :goto_0
    return-object v0

    .line 63
    :cond_1
    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v6

    .line 64
    new-array v7, v13, [Ljava/lang/Object;

    aput-object p0, v7, v1

    aput-object p1, v7, v5

    .line 65
    invoke-virtual {v6}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v8

    array-length v9, v8

    move v4, v1

    :goto_1
    if-lt v4, v9, :cond_2

    .line 66
    :goto_2
    if-nez v2, :cond_6

    .line 67
    new-instance v0, Ljava/sql/SQLException;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not find public constructor with ConnectionSource, DatabaseTableConfig parameters in class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    aget-object v3, v8, v4

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v0, v10

    if-ne v0, v13, :cond_5

    move v0, v1

    :goto_3
    array-length v11, v10

    if-lt v0, v11, :cond_3

    move v0, v5

    :goto_4
    if-eqz v0, :cond_5

    move-object v2, v3

    goto :goto_2

    :cond_3
    aget-object v11, v10, v0

    aget-object v12, v7, v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 72
    :cond_6
    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not call the constructor in class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private static a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Ljava/util/List;)V

    .line 111
    return-object v0
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    const-string/jumbo v0, "CREATE TABLE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    const/4 v8, 0x1

    .line 128
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v10

    array-length v11, v10

    const/4 v0, 0x0

    move v9, v0

    move v0, v8

    :goto_0
    if-lt v9, v11, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v8

    move-object v7, p0

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v12, p3

    invoke-interface/range {v7 .. v12}, Lcom/j256/ormlite/db/DatabaseType;->addPrimaryKeySql([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 152
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v8

    move-object v7, p0

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v12, p3

    invoke-interface/range {v7 .. v12}, Lcom/j256/ormlite/db/DatabaseType;->addUniqueComboSql([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 154
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    const-string/jumbo v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {p0, v2}, Lcom/j256/ormlite/db/DatabaseType;->appendCreateTableSuffix(Ljava/lang/StringBuilder;)V

    .line 160
    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Z)V

    .line 164
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Z)V

    .line 165
    return-void

    .line 128
    :cond_0
    aget-object v3, v10, v9

    .line 130
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v1

    if-nez v1, :cond_4

    .line 131
    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x0

    move v8, v0

    .line 137
    :goto_2
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getColumnDefinition()Ljava/lang/String;

    move-result-object v0

    .line 138
    if-nez v0, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/j256/ormlite/db/DatabaseType;->appendColumnArg(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 128
    :goto_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v0, v8

    goto :goto_0

    .line 135
    :cond_1
    const-string/jumbo v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v0

    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 145
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 154
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move v8, v0

    goto :goto_3
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 171
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_0
    if-lt v3, v6, :cond_0

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    return-void

    .line 171
    :cond_0
    aget-object v7, v5, v3

    .line 173
    if-eqz p3, :cond_3

    .line 174
    invoke-virtual {v7}, Lcom/j256/ormlite/field/FieldType;->getUniqueIndexName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 178
    :goto_2
    if-eqz v1, :cond_2

    .line 179
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 183
    if-nez v0, :cond_1

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    invoke-virtual {v7}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {v7}, Lcom/j256/ormlite/field/FieldType;->getIndexName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 191
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 192
    const-string/jumbo v1, "CREATE "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    if-eqz p3, :cond_5

    .line 194
    const-string/jumbo v1, "UNIQUE "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_5
    const-string/jumbo v1, "INDEX "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v3, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, " ON "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, " ( "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const/4 v1, 0x1

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 213
    const-string/jumbo v0, " )"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    .line 205
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    if-eqz v1, :cond_7

    move v1, v2

    .line 211
    :goto_4
    invoke-interface {p0, v3, v0}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    .line 209
    :cond_7
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static declared-synchronized createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)TD;"
        }
    .end annotation

    .prologue
    .line 28
    const-class v1, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 29
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "connectionSource argument cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 31
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static getCreateTableStatements(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    instance-of v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v0, :cond_0

    .line 86
    check-cast p0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;)Ljava/util/List;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p2, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 89
    new-instance v0, Lcom/j256/ormlite/table/TableInfo;

    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 90
    invoke-static {p1, v0}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCreateTableStatements(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 97
    instance-of v1, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;)Ljava/util/List;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p1, p0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 101
    new-instance v0, Lcom/j256/ormlite/table/TableInfo;

    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 102
    invoke-static {p0, v0}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
