.class final Lcom/mobeta/android/dslv/m;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/io/File;

.field c:I

.field d:I

.field e:Z

.field final synthetic f:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/mobeta/android/dslv/m;->c:I

    iput v1, p0, Lcom/mobeta/android/dslv/m;->d:I

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/m;->e:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "dslv_state.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/m;->b:Ljava/io/File;

    iget-object v0, p0, Lcom/mobeta/android/dslv/m;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/m;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const-string v0, "mobeta"

    const-string v1, "file created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "mobeta"

    const-string v2, "Could not create dslv_state.txt"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mobeta"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/m;->e:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iget v2, p0, Lcom/mobeta/android/dslv/m;->d:I

    if-nez v2, :cond_1

    :goto_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/mobeta/android/dslv/m;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    iget v0, p0, Lcom/mobeta/android/dslv/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/m;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
