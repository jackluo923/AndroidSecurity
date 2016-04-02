.class public final Lcom/appyet/c/ba;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/appyet/c/bb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/c/ay;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/appyet/c/ay;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/appyet/c/ba;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/appyet/c/ba;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/c/bb;

    iget-boolean v0, v0, Lcom/appyet/c/bb;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0200dc

    invoke-virtual {p0, p1}, Lcom/appyet/c/ba;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/c/bb;

    if-nez p2, :cond_7

    iget-boolean v1, v0, Lcom/appyet/c/bb;->f:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/appyet/c/ba;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030056

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/appyet/c/bd;

    invoke-direct {v2}, Lcom/appyet/c/bd;-><init>()V

    const v1, 0x7f0a0074

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/appyet/c/bd;->b:Landroid/widget/TextView;

    const v1, 0x7f0a0075

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/appyet/c/bd;->d:Landroid/view/View;

    iget-object v1, v2, Lcom/appyet/c/bd;->d:Landroid/view/View;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuDividerColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v2, Lcom/appyet/c/bd;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuGroupTextColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Lcom/appyet/c/bd;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-short v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuGroupTextSize:S

    int-to-float v4, v4

    invoke-virtual {v1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-boolean v2, v0, Lcom/appyet/c/bb;->f:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/appyet/c/bb;->c:Ljava/lang/String;

    const-string v4, "Feed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/appyet/c/bb;->c:Ljava/lang/String;

    const-string v4, "FeedQuery"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    iget-object v2, v0, Lcom/appyet/c/bb;->b:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/appyet/c/bb;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, v1, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v0, Lcom/appyet/c/bb;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/appyet/f/w;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appyet/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    invoke-virtual {v2}, Lcom/appyet/view/BadgeView;->show()V

    :cond_1
    :goto_1
    iget-boolean v2, v0, Lcom/appyet/c/bb;->f:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/appyet/c/bb;->e:Ljava/lang/String;

    if-eqz v2, :cond_a

    :try_start_0
    iget-object v2, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    invoke-virtual {v2}, Lcom/appyet/c/ay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "module/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/appyet/c/bb;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, v1, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_2
    iget-object v2, v1, Lcom/appyet/c/bd;->d:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, v1, Lcom/appyet/c/bd;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v3, v3, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v0, Lcom/appyet/c/bb;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/appyet/f/w;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Lcom/appyet/c/bb;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/appyet/c/bd;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-object p2

    :cond_5
    invoke-virtual {p0}, Lcom/appyet/c/ba;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030057

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/appyet/c/bd;

    invoke-direct {v2}, Lcom/appyet/c/bd;-><init>()V

    const v1, 0x7f0a0076

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/appyet/c/bd;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v1, v1, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-short v1, v1, Lcom/appyet/metadata/MetadataTheme;->LeftMenuItemVerticalPadding:S

    int-to-float v1, v1

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    invoke-virtual {v4}, Lcom/appyet/c/ay;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-short v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuItemVerticalPadding:S

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    invoke-virtual {v5}, Lcom/appyet/c/ay;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, v2, Lcom/appyet/c/bd;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7, v4, v7, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const v1, 0x7f0a0074

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/appyet/c/bd;->b:Landroid/widget/TextView;

    const v1, 0x7f0a0075

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/appyet/c/bd;->d:Landroid/view/View;

    new-instance v1, Lcom/appyet/view/BadgeView;

    iget-object v4, p0, Lcom/appyet/c/ba;->b:Landroid/content/Context;

    iget-object v5, v2, Lcom/appyet/c/bd;->b:Landroid/widget/TextView;

    invoke-direct {v1, v4, v5}, Lcom/appyet/view/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, v2, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    iget-object v1, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v1, v1, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    invoke-static {v1}, Lcom/appyet/manager/ar;->b(Lcom/appyet/context/ApplicationContext;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/appyet/view/BadgeView;->setBadgePosition(I)V

    :goto_3
    iget-object v1, v2, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    const/16 v4, 0xa

    invoke-virtual {v1, v7, v4}, Lcom/appyet/view/BadgeView;->setBadgeMargin(II)V

    iget-object v1, v2, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuBadgeBgColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/appyet/view/BadgeView;->setBadgeBackgroundColor(I)V

    iget-object v1, v2, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuBadgeTextColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/appyet/view/BadgeView;->setTextColor(I)V

    iget-object v1, v2, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-short v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuBadgeTextSize:S

    int-to-float v4, v4

    invoke-virtual {v1, v9, v4}, Lcom/appyet/view/BadgeView;->setTextSize(IF)V

    iget-object v1, v2, Lcom/appyet/c/bd;->d:Landroid/view/View;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuDividerColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v2, Lcom/appyet/c/bd;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuItemTextColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Lcom/appyet/c/bd;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v4, v4, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-short v4, v4, Lcom/appyet/metadata/MetadataTheme;->LeftMenuItemTextSize:S

    int-to-float v4, v4

    invoke-virtual {v1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f0a0077

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    iget-object v1, v1, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-short v1, v1, Lcom/appyet/metadata/MetadataTheme;->LeftMenuIconSize:S

    int-to-float v1, v1

    iget-object v4, p0, Lcom/appyet/c/ba;->a:Lcom/appyet/c/ay;

    invoke-virtual {v4}, Lcom/appyet/c/ay;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget-object v4, v2, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, v2, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_6
    iget-object v1, v2, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/appyet/view/BadgeView;->setBadgePosition(I)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/c/bd;

    goto/16 :goto_0

    :cond_8
    iget-object v2, v1, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/appyet/c/bd;->c:Lcom/appyet/view/BadgeView;

    invoke-virtual {v2}, Lcom/appyet/view/BadgeView;->hide()V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v2, v1, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    const v4, 0x7f0200dc

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v2, v1, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    :goto_4
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_9

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_9
    :goto_5
    throw v0

    :cond_a
    iget-object v2, v1, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :catch_2
    move-exception v2

    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, v1, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v2, v1, Lcom/appyet/c/bd;->a:Landroid/widget/ImageView;

    goto :goto_4
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/appyet/c/ba;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/c/bb;

    iget-boolean v0, v0, Lcom/appyet/c/bb;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
