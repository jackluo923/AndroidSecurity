.class public Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_PublicServiceDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$PostAttachment;
    }
.end annotation


# static fields
.field private static final CAPTURE_IMAGE_ACTIVITY_REQ:I = 0x2710


# instance fields
.field currentTime:J

.field enabledGPS:Z

.field height:I

.field i:I

.field private isActivityFinish:Z

.field protected isCalledOnce:Z

.field loadonce:Z

.field location:Ljava/lang/String;

.field locationManager:Landroid/location/LocationManager;

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

.field mGpsLocationListener:Landroid/location/LocationListener;

.field mImageViewHome:Landroid/widget/ImageView;

.field mLocationManager:Landroid/location/LocationManager;

.field mNetworkLocationListener:Landroid/location/LocationListener;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mServicePageUrl:Ljava/lang/String;

.field mStringWebContent:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mWebView:Landroid/webkit/WebView;

.field myLat:D

.field myLon:D

.field private outputFileUri:Landroid/net/Uri;

.field smallImageToBeRotatedUri:Landroid/net/Uri;

.field uniqueID:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->location:Ljava/lang/String;

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->currentTime:J

    .line 73
    iput-boolean v2, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isActivityFinish:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mStringWebContent:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->uniqueID:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mServicePageUrl:Ljava/lang/String;

    .line 88
    iput v2, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->height:I

    .line 89
    iput v2, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->width:I

    .line 90
    iput-wide v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->myLat:D

    .line 91
    iput-wide v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->myLon:D

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->loadonce:Z

    .line 98
    iput-boolean v2, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isCalledOnce:Z

    .line 100
    iput v2, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->i:I

    .line 175
    new-instance v0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$1;-><init>(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mNetworkLocationListener:Landroid/location/LocationListener;

    .line 217
    new-instance v0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$2;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$2;-><init>(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 60
    return-void
.end method

.method private SaveImageWithoutScaling(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 10
    .param p1, "finalBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 602
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, "root":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/MOL_Attachments"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    .local v4, "myDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 605
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 606
    .local v3, "generator":Ljava/util/Random;
    const/16 v5, 0x2710

    .line 607
    .local v5, "n":I
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 608
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Image-"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "fname":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 610
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 611
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 614
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 615
    .local v6, "out":Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x3c

    invoke-virtual {p1, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 616
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 617
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationChanged(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isActivityFinish:Z

    return v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->dismissDialog()V

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isActivityFinish:Z

    return-void
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->openImageIntent()V

    return-void
.end method

.method private decodeUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "selectedImage"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x1f4

    .line 571
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 572
    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 574
    iget-object v6, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v6}, Lae/gov/mol/MolFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 573
    invoke-static {v6, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 577
    const/16 v0, 0x1f4

    .line 580
    .local v0, "REQUIRED_SIZE":I
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v5, "width_tmp":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 581
    .local v1, "height_tmp":I
    const/4 v4, 0x1

    .line 583
    .local v4, "scale":I
    :goto_0
    div-int/lit8 v6, v5, 0x2

    if-lt v6, v7, :cond_0

    div-int/lit8 v6, v1, 0x2

    if-ge v6, v7, :cond_1

    .line 592
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 593
    .local v3, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 596
    iget-object v6, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v6}, Lae/gov/mol/MolFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 595
    invoke-static {v6, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 586
    .end local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 587
    div-int/lit8 v1, v1, 0x2

    .line 588
    mul-int/lit8 v4, v4, 0x2

    .line 582
    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 864
    invoke-virtual {p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 869
    :cond_0
    return-void
.end method

.method private initLocationManager()V
    .locals 5

    .prologue
    .line 159
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lae/gov/mol/MolFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    .line 160
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 161
    .local v0, "criteria":Landroid/location/Criteria;
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "provider":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 163
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 164
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 165
    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-interface {v3, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 173
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v1    # "location":Landroid/location/Location;
    :cond_1
    const-string v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-interface {v3, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method private locationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->myLat:D

    .line 265
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->myLon:D

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location mNetworkLocationListener : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->myLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->myLon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private openImageIntent()V
    .locals 8

    .prologue
    .line 546
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 547
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MOL_Attachments"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 546
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v4, "root":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 551
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 552
    .local v1, "generator":Ljava/util/Random;
    const/16 v3, 0x2710

    .line 553
    .local v3, "n":I
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 554
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Image-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "fname":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 556
    .local v5, "sdImageMainDirectory":Ljava/io/File;
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    .line 559
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v2, "i":Landroid/content/Intent;
    const-string v6, "output"

    iget-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 563
    const/16 v6, 0x2710

    invoke-virtual {p0, v2, v6}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 566
    return-void
.end method

.method private removeLocationListner()V
    .locals 2

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 212
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestLocation()V
    .locals 6

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 251
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    sget-boolean v0, Lae/gov/mol/MolApplication;->shouldNotifyGPS:Z

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->buildAlertMessageNoGps(Landroid/support/v4/app/FragmentActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBackPressListener(Landroid/view/View;)V
    .locals 1
    .param p1, "fragmentView"    # Landroid/view/View;

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 142
    new-instance v0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$3;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$3;-><init>(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    return-void
.end method


# virtual methods
.method public UploadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "uniqueIdAsFileName"    # Ljava/lang/String;

    .prologue
    .line 771
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->smallImageToBeRotatedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 775
    .local v1, "fstrm":Ljava/io/FileInputStream;
    new-instance v2, Lae/gov/mol/helper/HttpFileUpload;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f0900bf

    invoke-virtual {p0, v4}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/mTasheel/Public/InspectionComplaint.aspx?uniqueid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "photoshot"

    invoke-direct {v2, v3, v4, v5}, Lae/gov/mol/helper/HttpFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .local v2, "hfu":Lae/gov/mol/helper/HttpFileUpload;
    invoke-virtual {v2, v1}, Lae/gov/mol/helper/HttpFileUpload;->Send_Now(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    const-string v3, "done"

    .line 781
    .end local v1    # "fstrm":Ljava/io/FileInputStream;
    .end local v2    # "hfu":Lae/gov/mol/helper/HttpFileUpload;
    :goto_0
    return-object v3

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "error"

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 538
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 539
    if-eqz p1, :cond_0

    const-string v0, "cameraImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const-string v0, "cameraImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    .line 542
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 633
    const/16 v7, 0x2710

    if-ne p1, v7, :cond_0

    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 636
    if-nez p3, :cond_1

    .line 637
    const/4 v4, 0x1

    .line 648
    .local v4, "isCamera":Z
    :goto_0
    iget-object v5, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    .line 661
    .local v5, "selectedImageUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 663
    .local v3, "imageStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v7}, Lae/gov/mol/MolFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 678
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .local v2, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 711
    .local v6, "yourSelectedImageAfter":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-direct {p0, v5}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->decodeUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 716
    :goto_2
    invoke-direct {p0, v6}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->SaveImageWithoutScaling(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->smallImageToBeRotatedUri:Landroid/net/Uri;

    .line 717
    new-instance v7, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$PostAttachment;

    iget-object v8, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v7, p0, v8}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$PostAttachment;-><init>(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;Landroid/content/Context;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$PostAttachment;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 763
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "imageStream":Ljava/io/InputStream;
    .end local v4    # "isCamera":Z
    .end local v5    # "selectedImageUri":Landroid/net/Uri;
    .end local v6    # "yourSelectedImageAfter":Landroid/graphics/Bitmap;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lae/gov/mol/helper/CustomFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 765
    return-void

    .line 639
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 641
    const/4 v4, 0x0

    .line 642
    .restart local v4    # "isCamera":Z
    goto :goto_0

    .line 644
    .end local v4    # "isCamera":Z
    :cond_2
    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 643
    .restart local v4    # "isCamera":Z
    goto :goto_0

    .line 665
    .end local v0    # "action":Ljava/lang/String;
    .restart local v3    # "imageStream":Ljava/io/InputStream;
    .restart local v5    # "selectedImageUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 712
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "yourSelectedImageAfter":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 714
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 108
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 110
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mTags:Lae/gov/mol/helper/Tags;

    .line 111
    invoke-virtual {p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mBundle:Landroid/os/Bundle;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0900bf

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/mtasheel/Public/InspectionComplaint.aspx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mServicePageUrl:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 116
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v0}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->removeBack()V

    .line 123
    :cond_0
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/MOLLocationManager;->setListeners(Ljava/lang/Boolean;)V

    .line 136
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const v11, 0x7f08002d

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 281
    const v7, 0x7f0300be

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 284
    .local v6, "mView":Landroid/view/View;
    const v7, 0x7f060668

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    .line 288
    const v7, 0x7f060758

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090090

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 292
    const v7, 0x7f060757

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mImageViewHome:Landroid/widget/ImageView;

    .line 293
    iget-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$4;

    invoke-direct {v8, p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$4;-><init>(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 305
    iget-boolean v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->loadonce:Z

    if-eqz v7, :cond_2

    .line 306
    iget-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 307
    .local v5, "mSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 310
    iget-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 312
    iget-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;

    invoke-direct {v8, p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;-><init>(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 492
    iget-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v7}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 494
    const-wide/16 v1, 0x0

    .line 495
    .local v1, "latitude":D
    const-wide/16 v3, 0x0

    .line 497
    .local v3, "longitude":D
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/helper/MOLLocationManager;->getLocation()[D

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/helper/MOLLocationManager;->getLocation()[D

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 499
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/helper/MOLLocationManager;->getLocation()[D

    move-result-object v7

    aget-wide v1, v7, v10

    .line 500
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/helper/MOLLocationManager;->getLocation()[D

    move-result-object v7

    aget-wide v3, v7, v9

    .line 504
    :cond_0
    iget-object v7, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mServicePageUrl:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "?lang="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 505
    const-string v9, "&lon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&lat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 504
    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 508
    :try_start_0
    invoke-direct {p0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->removeLocationListner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v1    # "latitude":D
    .end local v3    # "longitude":D
    :cond_1
    :goto_0
    iput-boolean v10, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->loadonce:Z

    .line 523
    .end local v5    # "mSettings":Landroid/webkit/WebSettings;
    :cond_2
    invoke-direct {p0, v6}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->setBackPressListener(Landroid/view/View;)V

    .line 524
    return-object v6

    .line 510
    .restart local v1    # "latitude":D
    .restart local v3    # "longitude":D
    .restart local v5    # "mSettings":Landroid/webkit/WebSettings;
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 530
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 531
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "cameraImageUri"

    iget-object v1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    return-void
.end method
