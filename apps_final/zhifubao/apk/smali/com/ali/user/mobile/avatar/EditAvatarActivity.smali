.class public Lcom/ali/user/mobile/avatar/EditAvatarActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "EditAvatarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "avatar_crop_image"
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/avatar/HomeDataStore;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

.field private k:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private final l:Landroid/os/Handler;

.field protected mBtnCancel:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "operations_cancel"
    .end annotation
.end field

.field protected mBtnConfirm:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "operations_confirm"
    .end annotation
.end field

.field protected mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "avatar_crop"
    .end annotation
.end field

.field protected mIvRotate:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "operations_rotate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->b:Z

    .line 87
    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->e:Z

    .line 89
    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->f:Z

    .line 91
    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->g:Z

    .line 92
    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->h:Z

    .line 93
    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->i:Z

    .line 98
    new-instance v0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;-><init>(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->l:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 578
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 580
    new-array v0, v1, [B

    .line 581
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 587
    :cond_1
    :goto_0
    const-string/jumbo v1, ""

    .line 588
    if-eqz v0, :cond_2

    .line 589
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 592
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 425
    const-string/jumbo v0, "EditAvatarActivity"

    const-string/jumbo v1, "setImage"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->f:Z

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a(Z)V

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/CropImageView;->invalidate()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 526
    const-string/jumbo v1, "com.alipay.ext.editavatar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 529
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 530
    const-string/jumbo v0, "EditAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendExtMessage value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "EditAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setImage  \u4e0d\u9700\u8981\u624b\u52a8\u8bbe\u7f6e\u56fe\u7247\uff0c\u76f4\u63a5\u8fd4\u56de\u56fe\u7247 url ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string/jumbo v1, "imageUrl"

    invoke-direct {p0, v1, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->b()V

    .line 439
    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->i:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->h:Z

    return v0
.end method

.method static synthetic access$6(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->g:Z

    return v0
.end method

.method private b(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->d:Landroid/graphics/Bitmap;

    .line 508
    :goto_0
    const-string/jumbo v0, ""

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/avatar/CropImageView;->writeBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 514
    :goto_1
    return-object v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->isGoodNetwork()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/avatar/CropImageView;->getCropBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 511
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setResult(I)V

    .line 519
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/CropImageView;->recycle()V

    .line 520
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c()V

    .line 521
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->finish()V

    .line 522
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 566
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    iget-object v2, v2, Lcom/ali/user/mobile/avatar/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "tmp.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 570
    :cond_0
    return-void
.end method

.method public static fixBackgroundRepeat(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_0

    .line 768
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 769
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 770
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 771
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 774
    :cond_0
    return-void
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 375
    .line 376
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 378
    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 382
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 382
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 384
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    const-string/jumbo v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 386
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 389
    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_0
    :goto_0
    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    .line 389
    :goto_1
    if-eqz v6, :cond_1

    .line 391
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_1
    throw v0

    .line 389
    :cond_2
    if-eqz v1, :cond_3

    .line 391
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 394
    goto :goto_0

    .line 388
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 306
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_1

    move v1, v2

    .line 309
    :goto_0
    if-eqz v1, :cond_7

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 311
    invoke-static {p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 313
    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 314
    aget-object v3, v1, v3

    .line 316
    const-string/jumbo v4, "primary"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v1, v3

    .line 306
    goto :goto_0

    .line 322
    :cond_2
    invoke-static {p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 325
    const-string/jumbo v2, "content://downloads/public_downloads"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 326
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 324
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 328
    invoke-static {p0, v1, v0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 331
    :cond_3
    invoke-static {p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 333
    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 334
    aget-object v4, v1, v3

    .line 337
    const-string/jumbo v5, "image"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 338
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 345
    :cond_4
    :goto_2
    new-array v4, v2, [Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v4, v3

    .line 348
    const-string/jumbo v1, "_id=?"

    invoke-static {p0, v0, v1, v4}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 339
    :cond_5
    const-string/jumbo v5, "video"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 340
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 341
    :cond_6
    const-string/jumbo v5, "audio"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 342
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 352
    :cond_7
    const-string/jumbo v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 353
    invoke-static {p0, p1, v0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 356
    :cond_8
    const-string/jumbo v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 411
    const-string/jumbo v0, "com.android.providers.downloads.documents"

    .line 412
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 402
    const-string/jumbo v0, "com.android.externalstorage.documents"

    .line 403
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 420
    const-string/jumbo v0, "com.android.providers.media.documents"

    .line 421
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected initActions()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 133
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/avatar/CropImageView;->setActivity(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)V

    .line 134
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mBtnCancel:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mBtnConfirm:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mIvRotate:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v0, Lcom/ali/user/mobile/avatar/HomeDataStore;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/avatar/HomeDataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a:Lcom/ali/user/mobile/avatar/HomeDataStore;

    .line 138
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-static {v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->fixBackgroundRepeat(Landroid/view/View;)V

    .line 139
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->b:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "input-type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "extInvoke"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->e:Z

    const-string/jumbo v2, "headEdit"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->f:Z

    const-string/jumbo v0, "EditAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startGettingAvatar extInvoke: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "EditAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startGettingAvatar headEdit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    const-string/jumbo v0, "EditAvatarActivity"

    const-string/jumbo v1, "initActions"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 140
    :pswitch_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "\u6ca1\u6709\u53ef\u7528\u7684\u56fe\u7247\u5e94\u7528!"

    invoke-virtual {p0, v0, v5}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :pswitch_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "output"

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "__tmp_avatar.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->h:Z

    const-string/jumbo v0, "EditAvatarActivity"

    const-string/jumbo v1, "after call startActivityForResult"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v0, "\u6ca1\u6709\u53ef\u7528\u7684\u76f8\u673a\u5e94\u7528!"

    invoke-virtual {p0, v0, v5}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isGoodNetwork()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 800
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 801
    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 803
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 809
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 219
    const-string/jumbo v0, "EditAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityResult: resultCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput-boolean v4, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->g:Z

    .line 221
    iput-boolean v11, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->h:Z

    .line 222
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 225
    :pswitch_0
    if-eqz p3, :cond_8

    .line 226
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_6

    .line 228
    const-string/jumbo v10, ""

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_2

    .line 231
    iget-object v6, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v6, v3}, Lcom/ali/user/mobile/avatar/CropImageView;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v10

    .line 254
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v1, v0, v11}, Lcom/ali/user/mobile/avatar/CropImageView;->setBitmap(Ljava/lang/String;Z)V

    .line 256
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a()V

    goto :goto_0

    .line 231
    :cond_1
    const-string/jumbo v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 235
    :cond_2
    const/4 v0, 0x1

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v6, v0

    .line 236
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 237
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 236
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_c

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    const-string/jumbo v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 241
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 242
    if-nez v10, :cond_b

    .line 243
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 244
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 243
    invoke-static {v0, v2}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    move-object v0, v10

    .line 247
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 249
    :catch_0
    move-exception v1

    .line 250
    :goto_4
    const-string/jumbo v2, "EditAvatarActivity"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 257
    :cond_3
    if-eqz v3, :cond_4

    .line 258
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0, v3, v11}, Lcom/ali/user/mobile/avatar/CropImageView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 259
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a()V

    goto/16 :goto_0

    .line 261
    :cond_4
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->srcnotsupported:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->showToast(I)V

    .line 297
    :cond_5
    invoke-virtual {p0, v11}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setResult(I)V

    .line 298
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/CropImageView;->recycle()V

    .line 299
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c()V

    .line 300
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->finish()V

    goto/16 :goto_0

    .line 268
    :cond_6
    invoke-virtual {p0, v11}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setResult(I)V

    .line 269
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    if-eqz v0, :cond_7

    .line 270
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/CropImageView;->recycle()V

    .line 272
    :cond_7
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c()V

    .line 273
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->finish()V

    goto/16 :goto_0

    .line 276
    :cond_8
    invoke-virtual {p0, v11}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setResult(I)V

    .line 277
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    if-eqz v0, :cond_9

    .line 278
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/CropImageView;->recycle()V

    .line 280
    :cond_9
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c()V

    .line 281
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->finish()V

    goto/16 :goto_0

    .line 285
    :pswitch_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 286
    const-string/jumbo v2, "__tmp_avatar.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 285
    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 288
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v11}, Lcom/ali/user/mobile/avatar/CropImageView;->setBitmap(Ljava/lang/String;Z)V

    .line 289
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a()V

    .line 291
    :cond_a
    const-string/jumbo v0, "EditAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityResult bitMapPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_4

    :cond_b
    move-object v0, v10

    goto/16 :goto_3

    :cond_c
    move-object v0, v10

    goto/16 :goto_2

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 475
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->operations_cancel:I

    if-ne v0, v1, :cond_2

    .line 476
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->e:Z

    if-eqz v0, :cond_0

    .line 477
    const-string/jumbo v0, "operateType"

    const-string/jumbo v1, "cancel"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->b()V

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->operations_confirm:I

    if-ne v0, v1, :cond_4

    .line 481
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->e:Z

    if-eqz v0, :cond_3

    .line 482
    invoke-direct {p0, v2}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a(Z)V

    goto :goto_0

    .line 486
    :cond_3
    invoke-direct {p0, v2}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 489
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 491
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v2, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v0, v2}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->uploadHeadImg(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 495
    :cond_4
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->operations_rotate:I

    if-ne v0, v1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/avatar/CropImageView;->rotateBitmap(F)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    iput-boolean v2, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->h:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->g:Z

    .line 115
    const-string/jumbo v0, "EditAvatarActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-boolean v2, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->b:Z

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->b:Z

    .line 120
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_1

    .line 124
    const-class v0, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    .line 123
    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->j:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    .line 127
    const-class v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 126
    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->k:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 129
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 461
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onDestroy()V

    .line 462
    const-string/jumbo v0, "EditAvatarActivity"

    const-string/jumbo v1, "on Destroy"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/CropImageView;->recycle()V

    .line 469
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 535
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 536
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->e:Z

    if-eqz v0, :cond_0

    .line 537
    const-string/jumbo v0, "operateType"

    const-string/jumbo v1, "cancel"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setResult(I)V

    .line 540
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/CropImageView;->recycle()V

    .line 541
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c()V

    .line 542
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->finish()V

    .line 545
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 454
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onPause()V

    .line 455
    const-string/jumbo v0, "EditAvatarActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->i:Z

    .line 457
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 155
    const-string/jumbo v0, "EditAvatarActivity"

    const-string/jumbo v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const-string/jumbo v0, "bitMapPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    if-eqz v1, :cond_0

    .line 159
    const-string/jumbo v1, "EditAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onRestoreInstanceState mBitMapPath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/mobile/avatar/CropImageView;->setBitmap(Ljava/lang/String;Z)V

    .line 161
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/CropImageView;->invalidate()V

    .line 164
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 443
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    .line 444
    const-string/jumbo v0, "EditAvatarActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->i:Z

    .line 449
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 450
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string/jumbo v0, "bitMapPath"

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v0, "EditAvatarActivity"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 814
    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->mAppId:Ljava/lang/String;

    .line 815
    return-void
.end method

.method protected showToast(I)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 733
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected uploadHeadImg(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 599
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 600
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->k:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->k:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string/jumbo v1, "Aliuser"

    const-string/jumbo v2, "AliuserRegister"

    const-string/jumbo v3, "head_img_data"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->j:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->j:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    const-string/jumbo v1, "Aliuser"

    const-string/jumbo v2, "AliuserRegister"

    const-string/jumbo v3, "head_img_bitmap"

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 602
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setResult(I)V

    .line 603
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->finish()V

    .line 696
    return-void
.end method
