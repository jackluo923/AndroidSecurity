.class Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    .line 684
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 685
    return-void
.end method

.method synthetic constructor <init>(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;)V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0, p1, p2}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method
