.class public Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;
.super Landroid/os/AsyncTask;
.source "ActivityNewDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field map:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->map:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 283
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v4, v4, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringNewsId:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v6, v6, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v2, v4, v5, v6}, Lae/gov/mol/webservices/WebServiceResponse;->getMinistersNewsDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/NewsDetailsVo;

    iput-object v2, v3, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    .line 286
    :try_start_0
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/NewsDetailsVo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 288
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/NewsDetailsVo;->getResources()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/NewsDetailsVo$newsData;

    invoke-virtual {v2}, Lae/gov/mol/vo/NewsDetailsVo$newsData;->getNewsphoto()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "url":Ljava/lang/String;
    const-string v2, "http:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, "index":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 294
    .end local v0    # "index":I
    :cond_1
    if-eqz v1, :cond_2

    .line 295
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    # invokes: Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2, v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$3(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->map:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 301
    :catch_0
    move-exception v2

    goto :goto_0

    .line 299
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 312
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 347
    return-void

    .line 314
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 317
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 320
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 323
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewNewsDetail:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->map:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mImageViewNewsDetail:Landroid/widget/ImageView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->map:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->isDeviceVersionHoneycombAbove()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 327
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<html><head><style type=\"text/css\">body {padding-left:8px;padding-right:8px;font-size:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";background: \"file:///android_res/drawable/back_image.png\"}</style></head><body>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/NewsDetailsVo$newsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo$newsData;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringWebContent:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mWebViewNewsDetails:Landroid/webkit/WebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 329
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mWebViewNewsDetails:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringWebContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_1
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringHeadline:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 335
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringHeadline:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/NewsDetailsVo$newsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo$newsData;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringFacebookMessage:Ljava/lang/String;

    .line 336
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mWebViewNewsDetails:Landroid/webkit/WebView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 339
    :catch_0
    move-exception v6

    .line 340
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 331
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<html><body style=\"padding-left:8px;padding-right:8px;font-family:Helvetica;font-size:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";\"\'background-color:transparent\' >"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/NewsDetailsVo$newsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo$newsData;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringWebContent:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mWebViewNewsDetails:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringWebContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 341
    :catch_1
    move-exception v6

    .line 342
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 278
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 279
    return-void
.end method
