.class public Lcom/j256/ormlite/android/AndroidDatabaseResults;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/support/DatabaseResults;


# static fields
.field private static final MIN_NUM_COLUMN_NAMES_MAP:I = 0x8

.field private static final databaseType:Lcom/j256/ormlite/db/DatabaseType;


# instance fields
.field private final columnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnNames:[Ljava/lang/String;

.field private final cursor:Landroid/database/Cursor;

.field private final objectCache:Lcom/j256/ormlite/dao/ObjectCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    :goto_1
    iput-object p2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/database/Cursor;ZLcom/j256/ormlite/dao/ObjectCache;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V

    return-void
.end method

.method private lookupColumn(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public closeQuietly()V
    .locals 0

    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->close()V

    return-void
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->lookupColumn(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseResults;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v1, v0, p1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->lookupColumn(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown field \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' from the Android sqlite cursor, not in:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public first()Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "Android does not support BigDecimal type.  Use BIG_DECIMAL or BIG_DECIMAL_STRING types"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlobStream(I)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getByte(I)B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getShort(I)S

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getChar(I)C
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "More than 1 character stored in database column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getColumnCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getRawCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 2

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "Android does not support timestamp.  Use JAVA_DATE_LONG or JAVA_DATE_STRING types"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public last()Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveAbsolute(I)Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveRelative(I)Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public next()Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public previous()Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method
