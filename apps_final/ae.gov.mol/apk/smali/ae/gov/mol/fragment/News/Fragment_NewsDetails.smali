.class public Lae/gov/mol/fragment/News/Fragment_NewsDetails;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_NewsDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;
    }
.end annotation


# instance fields
.field private casted_image:Ljava/io/File;

.field public final consumer_key:Ljava/lang/String;

.field height:I

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mImageViewNewsDetail:Landroid/widget/ImageView;

.field mImageViewShare:Landroid/widget/ImageView;

.field mImageViewTweet:Landroid/widget/ImageView;

.field mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringHeadline:Ljava/lang/String;

.field mStringNewsDate:Ljava/lang/String;

.field mStringNewsId:Ljava/lang/String;

.field mStringNewsShort:Ljava/lang/String;

.field mStringWebContent:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewDate:Landroid/widget/TextView;

.field mTextViewHeadline:Landroid/widget/TextView;

.field mTextViewSnaps:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field mWebViewNewsDetails:Landroid/webkit/WebView;

.field message:Ljava/lang/String;

.field myImageLoader:Lcom/gov/mol/imageloader/MyImageLoader;

.field public newsImageUrl:Ljava/lang/String;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public final secret_key:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringWebContent:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringNewsId:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringHeadline:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringNewsDate:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringNewsShort:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->message:Ljava/lang/String;

    .line 86
    iput v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->height:I

    .line 87
    iput v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->width:I

    .line 90
    const-string v0, "XsjBu5cHdOiiqPaBb29eg"

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->consumer_key:Ljava/lang/String;

    .line 91
    const-string v0, "OPTRppWkDXBGHAWxAHEI5NjBQQwKZoVdOiYZ8oiZXo"

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->secret_key:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method


# virtual methods
.method public GetDeviceHeight()V
    .locals 3

    .prologue
    .line 296
    iget-object v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v2}, Lae/gov/mol/helper/CustomFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 298
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 299
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->height:I

    .line 300
    iget v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->height:I

    mul-int/lit8 v2, v2, 0x1e

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->height:I

    .line 301
    return-void
.end method

.method public String_to_File(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "img_url"    # Ljava/lang/String;

    .prologue
    .line 371
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 373
    .local v5, "rootSdDirectory":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v9, "attachment.jpg"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->casted_image:Ljava/io/File;

    .line 374
    iget-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->casted_image:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 375
    iget-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->casted_image:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 377
    :cond_0
    iget-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->casted_image:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 379
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->casted_image:Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 381
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 383
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 382
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 384
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 385
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 386
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 387
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 389
    .local v4, "in":Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 390
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 391
    .local v6, "size":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_1

    .line 394
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 395
    iget-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->casted_image:Ljava/io/File;

    .line 402
    .end local v0    # "buffer":[B
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "rootSdDirectory":Ljava/io/File;
    .end local v6    # "size":I
    .end local v7    # "url":Ljava/net/URL;
    :goto_1
    return-object v8

    .line 392
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

    .line 397
    .end local v0    # "buffer":[B
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "rootSdDirectory":Ljava/io/File;
    .end local v6    # "size":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 399
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 402
    iget-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->casted_image:Ljava/io/File;

    goto :goto_1
.end method

.method public onClickTwitt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 347
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "onTweet in"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v1}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    new-instance v0, Lae/gov/mol/social/twitter/Twitt_Sharing;

    invoke-virtual {p0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "XsjBu5cHdOiiqPaBb29eg"

    const-string v3, "OPTRppWkDXBGHAWxAHEI5NjBQQwKZoVdOiYZ8oiZXo"

    invoke-direct {v0, v1, v2, v3}, Lae/gov/mol/social/twitter/Twitt_Sharing;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .local v0, "twitt":Lae/gov/mol/social/twitter/Twitt_Sharing;
    if-eqz p2, :cond_0

    .line 354
    invoke-virtual {p0, p2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->String_to_File(Ljava/lang/String;)Ljava/io/File;

    .line 356
    :cond_0
    if-eqz p1, :cond_1

    .line 357
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->casted_image:Ljava/io/File;

    invoke-virtual {v0, p1, v1}, Lae/gov/mol/social/twitter/Twitt_Sharing;->shareToTwitter(Ljava/lang/String;Ljava/io/File;)V

    .line 362
    .end local v0    # "twitt":Lae/gov/mol/social/twitter/Twitt_Sharing;
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const v2, 0x7f090099

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 100
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 101
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 102
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 103
    new-instance v0, Lae/gov/mol/vo/NewsDetailsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/NewsDetailsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    .line 104
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mTags:Lae/gov/mol/helper/Tags;

    .line 105
    invoke-virtual {p0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mBundle:Landroid/os/Bundle;

    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mNewsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringNewsId:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mNewsHeadLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringHeadline:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mNewsDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringNewsDate:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mNewsShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringNewsShort:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/gov/mol/imageloader/MyImageLoader;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lcom/gov/mol/imageloader/MyImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->myImageLoader:Lcom/gov/mol/imageloader/MyImageLoader;

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->setRetainInstance(Z)V

    .line 112
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 113
    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 112
    iput-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Jignesh "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringHeadline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 124
    const v7, 0x7f0300ae

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "mView":Landroid/view/View;
    const v7, 0x7f0605e4

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mImageViewTweet:Landroid/widget/ImageView;

    .line 126
    const v7, 0x7f0605eb

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebViewNewsDetails:Landroid/webkit/WebView;

    .line 127
    const v7, 0x7f0605e9

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mTextViewSnaps:Landroid/widget/TextView;

    .line 128
    const v7, 0x7f0605e6

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mTextViewHeadline:Landroid/widget/TextView;

    .line 129
    const v7, 0x7f0605df

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mImageViewNewsDetail:Landroid/widget/ImageView;

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "xxxxxxx"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringNewsDate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 131
    iget-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mTextViewHeadline:Landroid/widget/TextView;

    iget-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringHeadline:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mTextViewSnaps:Landroid/widget/TextView;

    iget-object v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringNewsShort:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->GetDeviceHeight()V

    .line 134
    iget-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mImageViewNewsDetail:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->height:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    const v7, 0x7f060758

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090091

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :try_start_0
    iget-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebViewNewsDetails:Landroid/webkit/WebView;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 143
    .local v5, "webViewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "mZoomManager"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 144
    .local v3, "mZoomManagerField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    iget-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebViewNewsDetails:Landroid/webkit/WebView;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 149
    .local v4, "mZoomManagerInstance":Ljava/lang/Object;
    const-string v7, "android.webkit.ZoomManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 150
    .local v6, "zoomManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "mDefaultMaxZoomScale"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 151
    .local v1, "mDefaultMaxZoomScaleField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 152
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 166
    .end local v1    # "mDefaultMaxZoomScaleField":Ljava/lang/reflect/Field;
    .end local v3    # "mZoomManagerField":Ljava/lang/reflect/Field;
    .end local v4    # "mZoomManagerInstance":Ljava/lang/Object;
    .end local v5    # "webViewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "zoomManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebViewNewsDetails:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 167
    iget-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebViewNewsDetails:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 173
    iget-object v7, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mImageViewTweet:Landroid/widget/ImageView;

    new-instance v8, Lae/gov/mol/fragment/News/Fragment_NewsDetails$1;

    invoke-direct {v8, p0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails$1;-><init>(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v7, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;

    invoke-direct {v7, p0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;-><init>(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)V

    new-array v8, v10, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return-object v2

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public showMenu(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragmentActivity;->setTheme(I)V

    .line 305
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 306
    .local v0, "mPopupMenu":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 307
    new-instance v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails$2;-><init>(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnDismissListener(Landroid/support/v7/widget/PopupMenu$OnDismissListener;)V

    .line 317
    new-instance v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails$3;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails$3;-><init>(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 340
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 341
    return-void
.end method
