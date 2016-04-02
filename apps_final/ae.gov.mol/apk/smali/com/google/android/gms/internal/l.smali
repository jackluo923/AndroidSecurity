.class public final Lcom/google/android/gms/internal/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/l$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/m;

.field private static final U:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/database/CursorWindow;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final V:Ljava/lang/Object;

.field private static final ad:Lcom/google/android/gms/internal/l$a;


# instance fields
.field W:I

.field X:[Ljava/lang/String;

.field Y:Landroid/os/Bundle;

.field Z:[Landroid/database/CursorWindow;

.field aa:Landroid/os/Bundle;

.field ab:[I

.field ac:I

.field mClosed:Z

.field p:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/m;

    invoke-direct {v0}, Lcom/google/android/gms/internal/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/l;->CREATOR:Lcom/google/android/gms/internal/m;

    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/google/android/gms/internal/l;->U:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/l;->V:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/l$1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/l$1;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/l;->ad:Lcom/google/android/gms/internal/l$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/l;->mClosed:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/l$a;ILandroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/l$a;->b(Lcom/google/android/gms/internal/l$a;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/l;->a(Lcom/google/android/gms/internal/l$a;)[Landroid/database/CursorWindow;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/gms/internal/l;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/l;->mClosed:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/l;->W:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ac;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/l;->X:[Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ac;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    iput-object v0, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    iput p3, p0, Lcom/google/android/gms/internal/l;->p:I

    iput-object p4, p0, Lcom/google/android/gms/internal/l;->aa:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/l;->h()V

    return-void
.end method

.method public static a(ILandroid/os/Bundle;)Lcom/google/android/gms/internal/l;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/l;

    sget-object v1, Lcom/google/android/gms/internal/l;->ad:Lcom/google/android/gms/internal/l$a;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/l;-><init>(Lcom/google/android/gms/internal/l$a;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method private static a(Landroid/database/CursorWindow;)V
    .locals 0

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/l;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ltz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/l;->ac:I

    if-lt p2, v0, :cond_4

    :cond_3
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/internal/l;->ac:I

    invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_4
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/l$a;)[Landroid/database/CursorWindow;
    .locals 11

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/l$a;->b(Lcom/google/android/gms/internal/l$a;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    new-array v0, v6, [Landroid/database/CursorWindow;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/l$a;->c(Lcom/google/android/gms/internal/l$a;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v10, Landroid/database/CursorWindow;

    invoke-direct {v10, v6}, Landroid/database/CursorWindow;-><init>(Z)V

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/database/CursorWindow;

    aput-object v10, v2, v6

    invoke-static {p0}, Lcom/google/android/gms/internal/l$a;->b(Lcom/google/android/gms/internal/l$a;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v10, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_a

    :try_start_0
    invoke-virtual {v10}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cursor window out of memory"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v10}, Landroid/database/CursorWindow;->close()V

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move v5, v6

    :goto_2
    invoke-static {p0}, Lcom/google/android/gms/internal/l$a;->b(Lcom/google/android/gms/internal/l$a;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v5, v1, :cond_9

    invoke-static {p0}, Lcom/google/android/gms/internal/l$a;->b(Lcom/google/android/gms/internal/l$a;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v10, v7, v5}, Landroid/database/CursorWindow;->putNull(II)Z

    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_2
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1, v7, v5}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_3

    :cond_3
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4, v7, v5}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_3

    :cond_4
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v10, v3, v4, v7, v5}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_3

    :cond_5
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_7

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v3, 0x1

    :goto_4
    invoke-virtual {v10, v3, v4, v7, v5}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_3

    :cond_6
    const-wide/16 v3, 0x0

    goto :goto_4

    :cond_7
    instance-of v4, v1, [B

    if-eqz v4, :cond_8

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v10, v1, v7, v5}, Landroid/database/CursorWindow;->putBlob([BII)Z

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported object for column "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    :cond_a
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static f(I)Lcom/google/android/gms/internal/l;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/l;->a(ILandroid/os/Bundle;)Lcom/google/android/gms/internal/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;II)J
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->ab:[I

    aget v1, v1, p3

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->ab:[I

    aget v1, v1, p3

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public b(Ljava/lang/String;II)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->ab:[I

    aget v1, v1, p3

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->ab:[I

    aget v1, v1, p3

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/l;->mClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/l;->mClosed:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/l;->a(Landroid/database/CursorWindow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;II)Z
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->ab:[I

    aget v1, v1, p3

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/l;->CREATOR:Lcom/google/android/gms/internal/m;

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)I
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/l;->ac:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ac;->a(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/l;->ab:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->ab:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/l;->ab:[I

    array-length v0, v0

    if-ne v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public e(Ljava/lang/String;II)[B
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->ab:[I

    aget v1, v1, p3

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;II)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/l;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;II)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/internal/l;->ab:[I

    aget v1, v1, p3

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/l;->ac:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/l;->p:I

    return v0
.end method

.method public h()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/l;->X:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Y:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/l;->X:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/l;->ab:[I

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->ab:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/l;->Z:[Landroid/database/CursorWindow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/l;->ac:I

    return-void
.end method

.method public i()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->aa:Landroid/os/Bundle;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/l;->mClosed:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/l;->CREATOR:Lcom/google/android/gms/internal/m;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/m;->a(Lcom/google/android/gms/internal/l;Landroid/os/Parcel;I)V

    return-void
.end method
