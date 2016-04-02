.class public Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_CustomFragment_PublicServiceDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;
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

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

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

    .line 80
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->location:Ljava/lang/String;

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->currentTime:J

    .line 93
    iput-boolean v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isActivityFinish:Z

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mStringWebContent:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->uniqueID:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mServicePageUrl:Ljava/lang/String;

    .line 108
    iput v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->height:I

    .line 109
    iput v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->width:I

    .line 110
    iput-wide v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->myLat:D

    .line 111
    iput-wide v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->myLon:D

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->loadonce:Z

    .line 118
    iput-boolean v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isCalledOnce:Z

    .line 120
    iput v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->i:I

    .line 171
    new-instance v0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$1;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mNetworkLocationListener:Landroid/location/LocationListener;

    .line 213
    new-instance v0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$2;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$2;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 80
    return-void
.end method

.method private SaveImageWithoutScaling(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 10
    .param p1, "finalBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 586
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 587
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

    .line 588
    .local v4, "myDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 589
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 590
    .local v3, "generator":Ljava/util/Random;
    const/16 v5, 0x2710

    .line 591
    .local v5, "n":I
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 592
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

    .line 593
    .local v2, "fname":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 594
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 595
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 598
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 599
    .local v6, "out":Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x3c

    invoke-virtual {p1, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 600
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 601
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationChanged(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isActivityFinish:Z

    return v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V
    .locals 0

    .prologue
    .line 847
    invoke-direct {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->dismissDialog()V

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isActivityFinish:Z

    return-void
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->openImageIntent()V

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

    .line 555
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 556
    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 558
    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v6}, Lae/gov/mol/helper/CustomFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 557
    invoke-static {v6, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 561
    const/16 v0, 0x1f4

    .line 564
    .local v0, "REQUIRED_SIZE":I
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v5, "width_tmp":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 565
    .local v1, "height_tmp":I
    const/4 v4, 0x1

    .line 567
    .local v4, "scale":I
    :goto_0
    div-int/lit8 v6, v5, 0x2

    if-lt v6, v7, :cond_0

    div-int/lit8 v6, v1, 0x2

    if-ge v6, v7, :cond_1

    .line 576
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 577
    .local v3, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 580
    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v6}, Lae/gov/mol/helper/CustomFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 579
    invoke-static {v6, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 570
    .end local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 571
    div-int/lit8 v1, v1, 0x2

    .line 572
    mul-int/lit8 v4, v4, 0x2

    .line 566
    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 853
    :cond_0
    return-void
.end method

.method private initLocationManager()V
    .locals 5

    .prologue
    .line 155
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    .line 156
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 157
    .local v0, "criteria":Landroid/location/Criteria;
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "provider":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 159
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 160
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 161
    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-interface {v3, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 169
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v1    # "location":Landroid/location/Location;
    :cond_1
    const-string v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-interface {v3, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method private locationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 260
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->myLat:D

    .line 261
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->myLon:D

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location mNetworkLocationListener : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->myLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->myLon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private openImageIntent()V
    .locals 8

    .prologue
    .line 530
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 531
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

    .line 530
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v4, "root":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 535
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 536
    .local v1, "generator":Ljava/util/Random;
    const/16 v3, 0x2710

    .line 537
    .local v3, "n":I
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 538
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

    .line 539
    .local v0, "fname":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 540
    .local v5, "sdImageMainDirectory":Ljava/io/File;
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    .line 543
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v2, "i":Landroid/content/Intent;
    const-string v6, "output"

    iget-object v7, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 547
    const/16 v6, 0x2710

    invoke-virtual {p0, v2, v6}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 550
    return-void
.end method

.method private removeLocationListner()V
    .locals 2

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 208
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestLocation()V
    .locals 6

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 247
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    sget-boolean v0, Lae/gov/mol/MolApplication;->shouldNotifyGPS:Z

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->buildAlertMessageNoGps(Landroid/support/v4/app/FragmentActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public UploadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "uniqueIdAsFileName"    # Ljava/lang/String;

    .prologue
    .line 755
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->smallImageToBeRotatedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 759
    .local v1, "fstrm":Ljava/io/FileInputStream;
    new-instance v2, Lae/gov/mol/helper/HttpFileUpload;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f0900bf

    invoke-virtual {p0, v4}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/mTasheel/Public/AskQuestion.aspx?uniqueid="

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

    .line 761
    .local v2, "hfu":Lae/gov/mol/helper/HttpFileUpload;
    invoke-virtual {v2, v1}, Lae/gov/mol/helper/HttpFileUpload;->Send_Now(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    const-string v3, "done"

    .line 765
    .end local v1    # "fstrm":Ljava/io/FileInputStream;
    .end local v2    # "hfu":Lae/gov/mol/helper/HttpFileUpload;
    :goto_0
    return-object v3

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "error"

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 522
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 523
    if-eqz p1, :cond_0

    const-string v0, "cameraImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "cameraImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    .line 526
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
    .line 617
    const/16 v7, 0x2710

    if-ne p1, v7, :cond_0

    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 620
    if-nez p3, :cond_1

    .line 621
    const/4 v4, 0x1

    .line 632
    .local v4, "isCamera":Z
    :goto_0
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    .line 645
    .local v5, "selectedImageUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 647
    .local v3, "imageStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v7}, Lae/gov/mol/helper/CustomFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 662
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v2, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 695
    .local v6, "yourSelectedImageAfter":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-direct {p0, v5}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->decodeUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 700
    :goto_2
    invoke-direct {p0, v6}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->SaveImageWithoutScaling(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->smallImageToBeRotatedUri:Landroid/net/Uri;

    .line 701
    new-instance v7, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;

    iget-object v8, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v7, p0, v8}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;Landroid/content/Context;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 747
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "imageStream":Ljava/io/InputStream;
    .end local v4    # "isCamera":Z
    .end local v5    # "selectedImageUri":Landroid/net/Uri;
    .end local v6    # "yourSelectedImageAfter":Landroid/graphics/Bitmap;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lae/gov/mol/helper/CustomFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 749
    return-void

    .line 623
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 625
    const/4 v4, 0x0

    .line 626
    .restart local v4    # "isCamera":Z
    goto :goto_0

    .line 628
    .end local v4    # "isCamera":Z
    :cond_2
    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 627
    .restart local v4    # "isCamera":Z
    goto :goto_0

    .line 649
    .end local v0    # "action":Ljava/lang/String;
    .restart local v3    # "imageStream":Ljava/io/InputStream;
    .restart local v5    # "selectedImageUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 696
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "yourSelectedImageAfter":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 698
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 128
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 130
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mTags:Lae/gov/mol/helper/Tags;

    .line 131
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mBundle:Landroid/os/Bundle;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0900bf

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/mtasheel/Public/AskQuestion.aspx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mServicePageUrl:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v0}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->removeBack()V

    .line 152
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const v5, 0x7f08002d

    const/4 v7, 0x0

    .line 277
    const v3, 0x7f0300be

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 280
    .local v2, "mView":Landroid/view/View;
    const v3, 0x7f060668

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    .line 284
    const v3, 0x7f060758

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09025a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 288
    const v3, 0x7f060757

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mImageViewHome:Landroid/widget/ImageView;

    .line 289
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$3;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$3;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 301
    iget-boolean v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->loadonce:Z

    if-eqz v3, :cond_1

    .line 302
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 303
    .local v1, "mSettings":Landroid/webkit/WebSettings;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 306
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 308
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 488
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v3}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mServicePageUrl:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?lang="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 491
    const-string v5, "&lon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->myLon:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&lat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->myLat:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 490
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 494
    :try_start_0
    invoke-direct {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->removeLocationListner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->loadonce:Z

    .line 508
    .end local v1    # "mSettings":Landroid/webkit/WebSettings;
    :cond_1
    return-object v2

    .line 496
    .restart local v1    # "mSettings":Landroid/webkit/WebSettings;
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 514
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 515
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "cameraImageUri"

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->outputFileUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_0
    return-void
.end method
