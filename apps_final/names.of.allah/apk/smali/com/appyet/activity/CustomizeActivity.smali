.class public Lcom/appyet/activity/CustomizeActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;


# instance fields
.field a:Lcom/appyet/context/ApplicationContext;

.field b:Lcom/appyet/activity/MainActivity;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/appyet/activity/b;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/Module;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/appyet/data/Module;

.field g:Lcom/mobeta/android/dslv/DragSortListView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/ProgressBar;

.field private j:Z

.field private k:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    iput-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->f:Lcom/appyet/data/Module;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/activity/CustomizeActivity;->j:Z

    new-instance v0, Lcom/appyet/activity/a;

    invoke-direct {v0, p0}, Lcom/appyet/activity/a;-><init>(Lcom/appyet/activity/CustomizeActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->k:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/activity/CustomizeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/activity/CustomizeActivity;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/appyet/activity/CustomizeActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/activity/CustomizeActivity;->j:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    const v9, 0x7f020078

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/appyet/activity/CustomizeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->i()Lcom/appyet/data/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->f:Lcom/appyet/data/Module;

    iget-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->f:Lcom/appyet/data/Module;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/appyet/activity/CustomizeActivity;->setTitle(I)V

    const-string v0, "customize.png"

    iget-object v1, p0, Lcom/appyet/activity/CustomizeActivity;->f:Lcom/appyet/data/Module;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/activity/CustomizeActivity;->f:Lcom/appyet/data/Module;

    invoke-virtual {v1}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->f:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "module/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :try_start_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/appyet/activity/CustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/appyet/activity/CustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->g:Lcom/mobeta/android/dslv/DragSortListView;

    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Lcom/appyet/activity/CustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->i:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v10}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->g:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, v8}, Lcom/mobeta/android/dslv/DragSortListView;->setCacheColorHint(I)V

    new-instance v0, Lcom/appyet/activity/b;

    invoke-direct {v0, p0, p0}, Lcom/appyet/activity/b;-><init>(Lcom/appyet/activity/CustomizeActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->d:Lcom/appyet/activity/b;

    iget-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->g:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, v8}, Lcom/mobeta/android/dslv/DragSortListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->g:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lcom/appyet/activity/CustomizeActivity;->k:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/appyet/activity/d;

    invoke-direct {v0, p0}, Lcom/appyet/activity/d;-><init>(Lcom/appyet/activity/CustomizeActivity;)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/activity/d;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    iget-object v0, p0, Lcom/appyet/activity/CustomizeActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "Customize"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v2, 0x7f020078

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v9}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/activity/CustomizeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method
