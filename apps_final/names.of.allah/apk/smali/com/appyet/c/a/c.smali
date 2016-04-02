.class public final Lcom/appyet/c/a/c;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/appyet/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/c/a/a;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:I

.field private d:Landroid/view/LayoutInflater;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appyet/c/a/a;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appyet/c/a/c;->a:Lcom/appyet/c/a/a;

    const v0, 0x7f030045

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/a/c;->b:Lcom/appyet/context/ApplicationContext;

    iput-object p3, p0, Lcom/appyet/c/a/c;->e:Ljava/util/List;

    const v0, 0x7f030046

    iput v0, p0, Lcom/appyet/c/a/c;->c:I

    iget-object v0, p0, Lcom/appyet/c/a/c;->b:Lcom/appyet/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/appyet/c/a/c;->d:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/c;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/appyet/c/a/c;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    new-instance v2, Lcom/appyet/c/a/d;

    iget-object v0, p0, Lcom/appyet/c/a/c;->a:Lcom/appyet/c/a/a;

    invoke-direct {v2, v0}, Lcom/appyet/c/a/d;-><init>(Lcom/appyet/c/a/a;)V

    const v0, 0x7f0a0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/a/d;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a0074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/a/d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/c/a/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/a;

    iget-object v3, v2, Lcom/appyet/c/a/d;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/appyet/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/appyet/c/a/c;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v3, v3, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v3, v3, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v4, "DARK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/appyet/c/a/d;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/c;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v3, v0, Lcom/appyet/a/a/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/appyet/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/appyet/c/a/c;->a:Lcom/appyet/c/a/a;

    invoke-static {v3}, Lcom/appyet/c/a/a;->k(Lcom/appyet/c/a/a;)Lcom/a/a/b/f;

    move-result-object v3

    iget-object v0, v0, Lcom/appyet/a/a/a;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/appyet/c/a/d;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/appyet/c/a/c;->a:Lcom/appyet/c/a/a;

    invoke-static {v4}, Lcom/appyet/c/a/a;->j(Lcom/appyet/c/a/a;)Lcom/a/a/b/d;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Lcom/a/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/c/a/d;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    move-object v1, p2

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v3, v2, Lcom/appyet/c/a/d;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/c;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v0, v2, Lcom/appyet/c/a/d;->b:Landroid/widget/ImageView;

    const v2, 0x7f0200b5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_3
.end method
