.class public Lcom/alipay/android/app/template/TemplateImageLoader;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TemplateImageLoader"

.field private static a:Lcom/alipay/android/app/template/TemplateImageLoader;


# instance fields
.field private b:Ljava/util/List;

.field private c:Landroid/support/v4/util/LruCache;

.field private d:Ljava/lang/Object;

.field private e:Landroid/os/Handler;

.field private f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->b:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->d:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->e:Landroid/os/Handler;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->g:I

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->e:Landroid/os/Handler;

    .line 65
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 66
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 65
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    .line 69
    div-int/lit8 v0, v0, 0x20

    .line 70
    new-instance v1, Lcom/alipay/android/app/template/TemplateImageLoader$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/template/TemplateImageLoader$1;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;I)V

    iput-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:Landroid/support/v4/util/LruCache;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader;Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 253
    new-instance v0, Lcom/alipay/android/app/template/TemplateImageLoader$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/template/TemplateImageLoader$2;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Z
    .locals 1

    .prologue
    .line 110
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/app/template/TemplateImageLoader;->b(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateImageLoader;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->g:I

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 113
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 114
    if-eq v1, v5, :cond_5

    .line 115
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 122
    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 123
    if-ltz v3, :cond_1

    .line 124
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_1
    const/4 v3, 0x0

    .line 127
    const-string/jumbo v4, "drawable"

    invoke-static {p0, v1, v4, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 128
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_6

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    :goto_0
    if-eqz p2, :cond_3

    .line 133
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :goto_1
    instance-of v0, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 138
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 140
    :cond_2
    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 145
    :goto_2
    return v0

    .line 135
    :cond_3
    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 140
    goto :goto_2

    :cond_5
    move v0, v2

    .line 145
    goto :goto_2

    :cond_6
    move-object v1, v3

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/android/app/template/TemplateImageLoader;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/alipay/android/app/template/TemplateImageLoader;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateImageLoader;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TemplateImageLoader;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    .line 87
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateImageLoader;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    return-object v0
.end method


# virtual methods
.method public clearCache(I)V
    .locals 6

    .prologue
    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 274
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    const-string/jumbo v0, "TemplateImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LruCache clearCache afterClear size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3}, Landroid/support/v4/util/LruCache;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 294
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 295
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 298
    :cond_1
    return-void

    .line 275
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->e(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 278
    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->f(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:Landroid/support/v4/util/LruCache;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->f(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 280
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 281
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    :cond_3
    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->g(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)V

    .line 285
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 291
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    .line 292
    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public loadNetImage(Landroid/view/View;Ljava/lang/String;[IZLjava/lang/String;I)V
    .locals 8

    .prologue
    .line 150
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/TemplateImageLoader;->loadNetImage(Landroid/view/View;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public loadNetImage(Landroid/view/View;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0x64

    .line 156
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->g:I

    if-gez v1, :cond_2

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 161
    const-string/jumbo v2, "image_loader_view_tag"

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "com.alipay.android.app.template"

    .line 160
    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->g:I

    .line 162
    const-string/jumbo v1, "TemplateImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "image_loader_view_tag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_2
    if-eqz p3, :cond_d

    .line 167
    aget v2, p3, v5

    .line 168
    const/4 v1, 0x1

    aget v1, p3, v1

    .line 171
    :goto_1
    if-gtz v2, :cond_c

    move v3, v0

    .line 175
    :goto_2
    if-gtz v1, :cond_3

    move v1, v0

    .line 180
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 185
    const-string/jumbo v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "www"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    invoke-static {v4, p2, p4, p1}, Lcom/alipay/android/app/template/TemplateImageLoader;->b(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :cond_4
    const-string/jumbo v0, "[pixelWidth]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "[pixelWidth]"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 193
    :cond_5
    iget v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->g:I

    if-lez v0, :cond_6

    .line 194
    iget v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->g:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    :cond_6
    if-lez p7, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_BLUR["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 199
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 200
    if-eqz v0, :cond_9

    .line 201
    if-eqz p4, :cond_8

    .line 203
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 202
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    move-object v2, p2

    .line 197
    goto :goto_3

    .line 205
    :cond_8
    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 211
    :cond_9
    invoke-static {v4, p5, p4, p1}, Lcom/alipay/android/app/template/TemplateImageLoader;->b(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Z

    .line 213
    new-instance v4, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-direct {v4, p0, v5}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;B)V

    .line 214
    invoke-static {v4, p1}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Landroid/view/View;)V

    .line 215
    invoke-static {v4}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)V

    .line 216
    invoke-static {v4, p4}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Z)V

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v4, v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V

    .line 218
    invoke-static {v4, v3}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V

    .line 219
    invoke-static {v4, v1}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V

    .line 220
    invoke-static {v4, v2}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Ljava/lang/String;)V

    .line 222
    invoke-static {v4, p7}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->d(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V

    .line 224
    new-instance v0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V

    .line 225
    iput-object v4, v0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    .line 226
    iput-object v2, v0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Ljava/lang/String;

    .line 228
    new-instance v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    .line 229
    if-lez p7, :cond_a

    .line 230
    new-instance v5, Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V

    .line 231
    iput p7, v5, Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;->a:I

    .line 232
    iput-object p1, v5, Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;->b:Landroid/view/View;

    .line 233
    iput-object v5, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

    .line 235
    :cond_a
    iput-object v0, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    .line 236
    iput v3, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->width:I

    .line 237
    iput v1, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->height:I

    .line 238
    iput-object p2, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    .line 239
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 240
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->imageView:Landroid/widget/ImageView;

    .line 241
    new-instance v0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V

    .line 242
    iput-object p1, v0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->a:Landroid/view/View;

    .line 243
    iput-object p6, v0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Ljava/lang/String;

    .line 244
    iput-boolean p4, v0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->c:Z

    .line 245
    iput-object v0, v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    .line 247
    :cond_b
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 248
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_c
    move v3, v2

    goto/16 :goto_2

    :cond_d
    move v1, v0

    move v2, v0

    goto/16 :goto_1
.end method
