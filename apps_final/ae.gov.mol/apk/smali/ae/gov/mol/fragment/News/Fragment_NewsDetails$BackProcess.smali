.class public Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_NewsDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/News/Fragment_NewsDetails;
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
.field final synthetic this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;)Lae/gov/mol/fragment/News/Fragment_NewsDetails;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 204
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringNewsId:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v4, v4, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v0, v2, v3, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getMinistersNewsDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/NewsDetailsVo;

    iput-object v0, v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    invoke-virtual {v0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 212
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 287
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 216
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 220
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    if-eqz v0, :cond_2

    .line 223
    :try_start_0
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/NewsDetailsVo$newsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo$newsData;->getNewsphoto()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 225
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 226
    .local v7, "index":I
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 230
    .end local v7    # "index":I
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v0, v0, Lae/gov/mol/helper/CustomFragmentActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 231
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v0, v0, Lae/gov/mol/helper/CustomFragmentActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mImageViewNewsDetail:Landroid/widget/ImageView;

    iget-object v3, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    # getter for: Lae/gov/mol/fragment/News/Fragment_NewsDetails;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {v3}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->access$0(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    new-instance v4, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess$1;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess$1;-><init>(Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Jd: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/NewsDetailsVo$newsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo$newsData;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v0}, Lae/gov/mol/helper/CommonMethods;->isDeviceVersionHoneycombAbove()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/NewsDetailsVo$newsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsDetailsVo$newsData;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<html><head><style type=\"text/css\">body {padding-left:8px;padding-right:8px;font-size:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    invoke-virtual {v2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";background: \"file:///android_res/drawable/back_image.png\"}</style></head><body>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

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

    iput-object v0, v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringWebContent:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebViewNewsDetails:Landroid/webkit/WebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 272
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebViewNewsDetails:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringWebContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_2
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebViewNewsDetails:Landroid/webkit/WebView;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    invoke-virtual {v1}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 281
    :catch_0
    move-exception v6

    .line 282
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 275
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_1
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<html><body style=\"padding-left:8px;padding-right:8px;font-family:Helvetica;font-size:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    invoke-virtual {v2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";\"\'background-color:transparent\' >"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mNewsDetailsVo:Lae/gov/mol/vo/NewsDetailsVo;

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

    iput-object v0, v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringWebContent:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mWebViewNewsDetails:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringWebContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$BackProcess;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 199
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 200
    return-void
.end method
