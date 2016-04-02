.class public Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "ActivityNewDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;,
        Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "1520524648173474"

.field private static final EXPIRES:Ljava/lang/String; = "expires_in"

.field private static final KEY:Ljava/lang/String; = "7KYlcbAAc5RBN5mNcschiSJS8aY="

.field private static final PERMISSIONS:[Ljava/lang/String;

.field private static final TOKEN:Ljava/lang/String; = "5a38914e9d4b7ee2b5505960f2ed5d15"


# instance fields
.field private casted_image:Ljava/io/File;

.field public final consumer_key:Ljava/lang/String;

.field currentapiVersion:I

.field private facebook:Lcom/facebook/android/Facebook;

.field height:I

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mImageViewFacebook:Landroid/widget/ImageView;

.field mImageViewHome:Landroid/widget/ImageView;

.field mImageViewInstagram:Landroid/widget/ImageView;

.field mImageViewMOLIcon:Landroid/widget/ImageView;

.field mImageViewNewsDetail:Landroid/widget/ImageView;

.field private mImageViewShare:Landroid/widget/ImageView;

.field mImageViewTweet:Landroid/widget/ImageView;

.field mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringFacebookMessage:Ljava/lang/String;

.field mStringHeadline:Ljava/lang/String;

.field mStringNewsDate:Ljava/lang/String;

.field mStringNewsId:Ljava/lang/String;

.field mStringNewsShort:Ljava/lang/String;

.field mStringTweetMessage:Ljava/lang/String;

.field mStringWebContent:Ljava/lang/String;

.field mStringsDate:[Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewDateDay:Landroid/widget/TextView;

.field mTextViewDateMounth:Landroid/widget/TextView;

.field mTextViewHeadline:Landroid/widget/TextView;

.field mTextViewSnaps:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field mWebViewNewsDetails:Landroid/webkit/WebView;

.field message:Ljava/lang/String;

.field private messageToPost:Ljava/lang/String;

.field public newsImageUrl:Ljava/lang/String;

.field public final secret_key:Ljava/lang/String;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    sput-object v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->PERMISSIONS:[Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringWebContent:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsId:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringHeadline:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsDate:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsShort:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->message:Ljava/lang/String;

    .line 88
    iput v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->height:I

    .line 89
    iput v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->width:I

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->currentapiVersion:I

    .line 94
    const-string v0, "XsjBu5cHdOiiqPaBb29eg"

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->consumer_key:Ljava/lang/String;

    .line 95
    const-string v0, "OPTRppWkDXBGHAWxAHEI5NjBQQwKZoVdOiYZ8oiZXo"

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->secret_key:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->newsImageUrl:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->messageToPost:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringTweetMessage:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringFacebookMessage:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)Lcom/facebook/android/Facebook;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->facebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->messageToPost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->messageToPost:Ljava/lang/String;

    return-void
.end method

.method private downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 406
    .local v3, "stream":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 407
    .local v1, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 410
    :try_start_0
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getHttpConnection(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 412
    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-object v0

    .line 414
    :catch_0
    move-exception v2

    .line 415
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getHttpConnection(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const/4 v4, 0x0

    .line 431
    .local v4, "stream":Ljava/io/InputStream;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 432
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 435
    .local v1, "connection":Ljava/net/URLConnection;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 436
    .local v3, "httpConnection":Ljava/net/HttpURLConnection;
    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 439
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 440
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 445
    .end local v3    # "httpConnection":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    return-object v4

    .line 442
    :catch_0
    move-exception v2

    .line 443
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    return-void
.end method


# virtual methods
.method public FormateDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "Date"    # Ljava/lang/String;

    .prologue
    .line 375
    move-object v3, p1

    .line 376
    .local v3, "mDate":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "String Date....hhh...."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyyHH:mma"

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 379
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd MMM"

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 380
    .local v4, "newformat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 381
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 386
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "newformat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 382
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public GetDeviceHeight()V
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 356
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->height:I

    .line 357
    iget v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->height:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->height:I

    .line 358
    return-void
.end method

.method public String_to_File(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "img_url"    # Ljava/lang/String;

    .prologue
    .line 466
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 468
    .local v5, "rootSdDirectory":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v9, "attachment.png"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->casted_image:Ljava/io/File;

    .line 469
    iget-object v8, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->casted_image:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 470
    iget-object v8, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->casted_image:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 472
    :cond_0
    iget-object v8, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->casted_image:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 474
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->casted_image:Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 476
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 478
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 477
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 479
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 480
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 481
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 482
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 484
    .local v4, "in":Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 485
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 486
    .local v6, "size":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_1

    .line 489
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 490
    iget-object v8, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->casted_image:Ljava/io/File;

    .line 497
    .end local v0    # "buffer":[B
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "rootSdDirectory":Ljava/io/File;
    .end local v6    # "size":I
    .end local v7    # "url":Ljava/net/URL;
    :goto_1
    return-object v8

    .line 487
    .restart local v0    # "buffer":[B
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "rootSdDirectory":Ljava/io/File;
    .restart local v6    # "size":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    .end local v0    # "buffer":[B
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "rootSdDirectory":Ljava/io/File;
    .end local v6    # "size":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 497
    iget-object v8, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->casted_image:Ljava/io/File;

    goto :goto_1
.end method

.method public doNotShare(Landroid/view/View;)V
    .locals 0
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 559
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->finish()V

    .line 560
    return-void
.end method

.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 398
    return-void
.end method

.method public isDeviceVersionHoneycombAbove()Z
    .locals 2

    .prologue
    .line 364
    iget v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->currentapiVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 365
    const/4 v0, 0x1

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginAndPostToWall()V
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->facebook:Lcom/facebook/android/Facebook;

    sget-object v1, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->PERMISSIONS:[Ljava/lang/String;

    const/4 v2, -0x1

    new-instance v3, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;-><init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/android/Facebook$DialogListener;)V

    .line 503
    return-void
.end method

.method public onClickTwitt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 452
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v1}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    new-instance v0, Lae/gov/mol/social/twitter/Twitt_Sharing;

    const-string v1, "XsjBu5cHdOiiqPaBb29eg"

    const-string v2, "OPTRppWkDXBGHAWxAHEI5NjBQQwKZoVdOiYZ8oiZXo"

    invoke-direct {v0, p0, v1, v2}, Lae/gov/mol/social/twitter/Twitt_Sharing;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .local v0, "twitt":Lae/gov/mol/social/twitter/Twitt_Sharing;
    if-eqz p1, :cond_0

    .line 455
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->casted_image:Ljava/io/File;

    invoke-virtual {v0, p1, v1}, Lae/gov/mol/social/twitter/Twitt_Sharing;->shareToTwitter(Ljava/lang/String;Ljava/io/File;)V

    .line 460
    .end local v0    # "twitt":Lae/gov/mol/social/twitter/Twitt_Sharing;
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v2, 0x7f0300ae

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->setContentView(I)V

    .line 123
    new-instance v2, Lcom/facebook/android/Facebook;

    const-string v3, "1520524648173474"

    invoke-direct {v2, v3}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->facebook:Lcom/facebook/android/Facebook;

    .line 124
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->restoreCredentials(Lcom/facebook/android/Facebook;)Z

    .line 125
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 126
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 127
    new-instance v2, Lae/gov/mol/helper/CommonMethods;

    invoke-direct {v2, p0}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 128
    const v2, 0x7f060757

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewHome:Landroid/widget/ImageView;

    .line 130
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$1;-><init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v2, 0x7f0605e3

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewInstagram:Landroid/widget/ImageView;

    .line 140
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewInstagram:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$2;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$2;-><init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v2, 0x7f060759

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewShare:Landroid/widget/ImageView;

    .line 149
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewShare:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewShare:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$3;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$3;-><init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v2, Lae/gov/mol/helper/PostParseGet;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 159
    new-instance v2, Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 160
    new-instance v2, Lae/gov/mol/vo/NewsDetailsVo;

    invoke-direct {v2}, Lae/gov/mol/vo/NewsDetailsVo;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    .line 161
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTags:Lae/gov/mol/helper/Tags;

    .line 163
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "news_detail"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mBundle:Landroid/os/Bundle;

    .line 165
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mNewsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsId:Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mNewsHeadLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringHeadline:Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mNewsDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsDate:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mNewsShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsShort:Ljava/lang/String;

    .line 170
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsDate:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsDate:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsDate:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringsDate:[Ljava/lang/String;

    .line 173
    const v2, 0x7f0605eb

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mWebViewNewsDetails:Landroid/webkit/WebView;

    .line 174
    const v2, 0x7f0605e7

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTextViewDateDay:Landroid/widget/TextView;

    .line 175
    const v2, 0x7f0605e8

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTextViewDateMounth:Landroid/widget/TextView;

    .line 177
    const v2, 0x7f0605e9

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTextViewSnaps:Landroid/widget/TextView;

    .line 178
    const v2, 0x7f0605e6

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTextViewHeadline:Landroid/widget/TextView;

    .line 179
    const v2, 0x7f0605df

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewNewsDetail:Landroid/widget/ImageView;

    .line 180
    const v2, 0x7f0605e4

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewTweet:Landroid/widget/ImageView;

    .line 181
    const v2, 0x7f0605e2

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewFacebook:Landroid/widget/ImageView;

    .line 186
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mWebViewNewsDetails:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 187
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mWebViewNewsDetails:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 191
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringsDate:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v4, :cond_0

    .line 192
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTextViewDateDay:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringsDate:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTextViewDateMounth:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringsDate:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTextViewHeadline:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringHeadline:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mTextViewSnaps:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->GetDeviceHeight()V

    .line 199
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewNewsDetail:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 200
    const v2, 0x7f060758

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090091

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 201
    const v2, 0x7f06075a

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewMOLIcon:Landroid/widget/ImageView;

    .line 202
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewMOLIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewTweet:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;-><init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewFacebook:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;-><init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v2, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;-><init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "facebookMessage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "facebookMessage":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 235
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringFacebookMessage:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 236
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringFacebookMessage:Ljava/lang/String;

    .line 240
    :cond_1
    :goto_0
    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->messageToPost:Ljava/lang/String;

    .line 241
    return-void

    .line 238
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public postToWall(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 510
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v3, "message"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v3, "description"

    const-string v4, "topic share"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :try_start_0
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->facebook:Lcom/facebook/android/Facebook;

    const-string v4, "me"

    invoke-virtual {v3, v4}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->facebook:Lcom/facebook/android/Facebook;

    const-string v4, "me/feed"

    const-string v5, "POST"

    invoke-virtual {v3, v4, v1, v5}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "response":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 518
    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    :cond_0
    const-string v3, "Blank response."

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 524
    :goto_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->finish()V

    .line 530
    .end local v2    # "response":Ljava/lang/String;
    :goto_1
    return-void

    .line 522
    .restart local v2    # "response":Ljava/lang/String;
    :cond_1
    const v3, 0x7f09024d

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    .end local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    const v3, 0x7f09024c

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->showToast(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->finish()V

    goto :goto_1
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 393
    return-void
.end method

.method public restoreCredentials(Lcom/facebook/android/Facebook;)Z
    .locals 4
    .param p1, "facebook"    # Lcom/facebook/android/Facebook;

    .prologue
    .line 552
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "7KYlcbAAc5RBN5mNcschiSJS8aY="

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 553
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "5a38914e9d4b7ee2b5505960f2ed5d15"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 554
    const-string v1, "expires_in"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 555
    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    return v1
.end method

.method public saveCredentials(Lcom/facebook/android/Facebook;)Z
    .locals 4
    .param p1, "facebook"    # Lcom/facebook/android/Facebook;

    .prologue
    .line 541
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "7KYlcbAAc5RBN5mNcschiSJS8aY="

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 542
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "5a38914e9d4b7ee2b5505960f2ed5d15"

    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 543
    const-string v1, "expires_in"

    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 544
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public share(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 564
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->loginAndPostToWall()V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->messageToPost:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->postToWall(Ljava/lang/String;)V

    goto :goto_0
.end method
