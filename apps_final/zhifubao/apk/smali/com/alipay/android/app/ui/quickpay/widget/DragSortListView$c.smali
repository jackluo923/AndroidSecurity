.class final Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/io/File;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e:I

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->f:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "dslv_state.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->b:Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->f:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e:I

    if-nez v2, :cond_1

    :goto_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e:I
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


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->f:Z

    return-void
.end method

.method public final b()V
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->f:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<DSLVState>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildCount()I

    move-result v2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Positions>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    add-int v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Positions>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Tops>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Tops>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Bottoms>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_4

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Bottoms>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</FirstExpPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I
    invoke-static {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v5

    # invokes: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(I)I
    invoke-static {v4, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2800(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I
    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v6

    # invokes: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I
    invoke-static {v5, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</FirstExpBlankHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SecondExpPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I
    invoke-static {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v5

    # invokes: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(I)I
    invoke-static {v4, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2800(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I
    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v6

    # invokes: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I
    invoke-static {v5, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SecondExpBlankHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SrcPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SrcHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ViewHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</ViewHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <LastY>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$3000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</LastY>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FloatY>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</FloatY>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ShuffleEdges>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_4
    if-ge v0, v2, :cond_5

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    add-int v6, v3, v0

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    # invokes: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(II)I
    invoke-static {v5, v6, v7}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$3100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</ShuffleEdges>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</DSLVState>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d:I

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d()V

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d:I

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->f:Z

    :cond_0
    return-void
.end method
