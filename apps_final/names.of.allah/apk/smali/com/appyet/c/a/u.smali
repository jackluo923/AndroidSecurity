.class public final Lcom/appyet/c/a/u;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/appyet/a/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/c/a/r;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:I

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/appyet/c/a/r;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appyet/c/a/u;->a:Lcom/appyet/c/a/r;

    const v0, 0x7f03004b

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    const v0, 0x7f03004c

    iput v0, p0, Lcom/appyet/c/a/u;->c:I

    iget-object v0, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/appyet/c/a/u;->d:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/u;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/appyet/c/a/u;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    new-instance v2, Lcom/appyet/c/a/v;

    iget-object v0, p0, Lcom/appyet/c/a/u;->a:Lcom/appyet/c/a/r;

    invoke-direct {v2, v0}, Lcom/appyet/c/a/v;-><init>(Lcom/appyet/c/a/r;)V

    const v0, 0x7f0a00b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->a:Landroid/widget/TextView;

    const v0, 0x7f0a00b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->c:Landroid/widget/TextView;

    const v0, 0x7f0a00ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->d:Landroid/widget/TextView;

    const v0, 0x7f0a00b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->b:Landroid/widget/TextView;

    const v0, 0x7f0a00b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->f:Landroid/widget/TextView;

    const v0, 0x7f0a00ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->g:Landroid/widget/TextView;

    const v0, 0x7f0a00a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a00b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a00b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->i:Landroid/widget/ImageView;

    const v0, 0x7f0a00b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/a/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v3, p0, Lcom/appyet/c/a/u;->a:Lcom/appyet/c/a/r;

    iget-wide v3, v3, Lcom/appyet/c/a/r;->b:J

    invoke-virtual {v0, v3, v4}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    iget-object v0, p0, Lcom/appyet/c/a/u;->a:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->h(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appyet/c/a/u;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/e;

    iget-object v3, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v3, v3, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v3, v3, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v4, "DARK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/appyet/c/a/v;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v3, v2, Lcom/appyet/c/a/v;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/appyet/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v3, v3, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v3, v3, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v4, "DARK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/appyet/c/a/v;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v3, v2, Lcom/appyet/c/a/v;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/appyet/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->c:Landroid/widget/TextView;

    iget v4, v0, Lcom/appyet/a/a/e;->h:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->d:Landroid/widget/TextView;

    iget v4, v0, Lcom/appyet/a/a/e;->i:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/appyet/a/a/e;->g:Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Lcom/appyet/d/a;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/appyet/c/a/v;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v0, Lcom/appyet/a/a/e;->g:Ljava/util/Date;

    invoke-static {v4, v5}, Lcom/appyet/d/a;->d(Lcom/appyet/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v3, v0, Lcom/appyet/a/a/e;->j:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/appyet/a/a/e;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v2, Lcom/appyet/c/a/v;->f:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/appyet/a/a/e;->j:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->f:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v3, v0, Lcom/appyet/a/a/e;->f:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/appyet/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/appyet/c/a/u;->a:Lcom/appyet/c/a/r;

    invoke-static {v3}, Lcom/appyet/c/a/r;->p(Lcom/appyet/c/a/r;)Lcom/a/a/b/f;

    move-result-object v3

    iget-object v4, v0, Lcom/appyet/a/a/e;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/appyet/c/a/v;->e:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/appyet/c/a/u;->a:Lcom/appyet/c/a/r;

    invoke-static {v6}, Lcom/appyet/c/a/r;->o(Lcom/appyet/c/a/r;)Lcom/a/a/b/d;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/a/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;)V

    :goto_5
    iget-boolean v3, v0, Lcom/appyet/a/a/e;->e:Z

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/appyet/c/a/v;->j:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-boolean v3, v0, Lcom/appyet/a/a/e;->l:Z

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/appyet/c/a/v;->h:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    iget-boolean v0, v0, Lcom/appyet/a/a/e;->m:Z

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/appyet/c/a/v;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/c/a/v;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    move-object v1, p2

    goto/16 :goto_0

    :cond_1
    :try_start_3
    iget-object v3, v2, Lcom/appyet/c/a/v;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_9
    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_8

    :cond_2
    :try_start_4
    iget-object v3, v2, Lcom/appyet/c/a/v;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v2, Lcom/appyet/c/a/v;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_3
    iget-object v3, v2, Lcom/appyet/c/a/v;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v0, Lcom/appyet/a/a/e;->g:Ljava/util/Date;

    invoke-static {v4, v5}, Lcom/appyet/d/a;->c(Lcom/appyet/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_4
    iget-object v3, v2, Lcom/appyet/c/a/v;->f:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_5
    iget-object v3, p0, Lcom/appyet/c/a/u;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v3, v3, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v3, v3, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v4, "DARK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/appyet/c/a/v;->e:Landroid/widget/ImageView;

    const v4, 0x7f0200ab

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_6
    iget-object v3, v2, Lcom/appyet/c/a/v;->e:Landroid/widget/ImageView;

    const v4, 0x7f0200ac

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_7
    iget-object v3, v2, Lcom/appyet/c/a/v;->j:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_8
    iget-object v3, v2, Lcom/appyet/c/a/v;->h:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_9
    iget-object v0, v2, Lcom/appyet/c/a/v;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto/16 :goto_9
.end method
