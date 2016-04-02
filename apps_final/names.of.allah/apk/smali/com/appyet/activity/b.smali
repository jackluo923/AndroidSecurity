.class public final Lcom/appyet/activity/b;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/appyet/activity/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/activity/CustomizeActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/appyet/activity/CustomizeActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/activity/b;->a:Lcom/appyet/activity/CustomizeActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/appyet/activity/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/b;->a:Lcom/appyet/activity/CustomizeActivity;

    iget-object v0, v0, Lcom/appyet/activity/CustomizeActivity;->g:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/c;

    iget-boolean v0, v0, Lcom/appyet/activity/c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v5, 0x7f0a0075

    const v4, 0x7f0a0074

    const/4 v3, 0x0

    const v6, 0x7f0200dc

    invoke-virtual {p0, p1}, Lcom/appyet/activity/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/c;

    if-nez p2, :cond_4

    iget-boolean v1, v0, Lcom/appyet/activity/c;->f:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/appyet/activity/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030035

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/appyet/activity/e;

    invoke-direct {v2}, Lcom/appyet/activity/e;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/appyet/activity/e;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/appyet/activity/e;->c:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-boolean v2, v0, Lcom/appyet/activity/c;->f:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/appyet/activity/e;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/appyet/activity/c;->e:Ljava/lang/String;

    if-eqz v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lcom/appyet/activity/b;->a:Lcom/appyet/activity/CustomizeActivity;

    invoke-virtual {v2}, Lcom/appyet/activity/CustomizeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "module/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/appyet/activity/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, v1, Lcom/appyet/activity/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/appyet/activity/e;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, v1, Lcom/appyet/activity/e;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/appyet/activity/b;->a:Lcom/appyet/activity/CustomizeActivity;

    iget-object v4, v0, Lcom/appyet/activity/c;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/appyet/f/w;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Lcom/appyet/activity/c;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/appyet/activity/e;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p0}, Lcom/appyet/activity/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/appyet/activity/e;

    invoke-direct {v2}, Lcom/appyet/activity/e;-><init>()V

    const v1, 0x7f0a0076

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/appyet/activity/e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/appyet/activity/e;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/appyet/activity/e;->c:Landroid/view/View;

    const v1, 0x7f0a0077

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/appyet/activity/e;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/activity/e;

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v2, v1, Lcom/appyet/activity/e;->a:Landroid/widget/ImageView;

    const v4, 0x7f0200dc

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v2, v1, Lcom/appyet/activity/e;->a:Landroid/widget/ImageView;

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    throw v0

    :cond_6
    iget-object v2, v1, Lcom/appyet/activity/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :catch_2
    move-exception v2

    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, v1, Lcom/appyet/activity/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v2, v1, Lcom/appyet/activity/e;->a:Landroid/widget/ImageView;

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/b;->a:Lcom/appyet/activity/CustomizeActivity;

    iget-object v0, v0, Lcom/appyet/activity/CustomizeActivity;->g:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/c;

    iget-boolean v0, v0, Lcom/appyet/activity/c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
