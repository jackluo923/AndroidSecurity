.class public Lae/gov/mol/helper/CustomFragment$TempAsycProcess;
.super Landroid/os/AsyncTask;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/helper/CustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TempAsycProcess"
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
.field icon:Ljava/lang/String;

.field private lat:D

.field private lon:D

.field private mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field private mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field final synthetic this$0:Lae/gov/mol/helper/CustomFragment;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lae/gov/mol/helper/CustomFragment;Lae/gov/mol/helper/CustomFragmentActivity;DDLandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "mCustomFragmentActivity"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p3, "lat"    # D
    .param p5, "lon"    # D
    .param p7, "mTextView"    # Landroid/widget/TextView;
    .param p8, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 145
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->icon:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 147
    iput-wide p3, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->lat:D

    .line 148
    iput-wide p5, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->lon:D

    .line 149
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    invoke-direct {v0, p2}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 150
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    invoke-direct {v0, p2}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 151
    iput-object p7, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mTextView:Landroid/widget/TextView;

    .line 152
    iput-object p8, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mImageView:Landroid/widget/ImageView;

    .line 153
    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)Lae/gov/mol/helper/CustomFragment;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 163
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 169
    .local v5, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://api.openweathermap.org/data/2.5/weather?lon="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->lon:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&lat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->lat:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&mode=xml&units=metric"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->url:Ljava/net/URL;

    .line 170
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 171
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 172
    .local v4, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 173
    .local v6, "xr":Lorg/xml/sax/XMLReader;
    new-instance v1, Lae/gov/xmlhandler/TempHandler;

    invoke-direct {v1}, Lae/gov/xmlhandler/TempHandler;-><init>()V

    .line 174
    .local v1, "mTempHandler":Lae/gov/xmlhandler/TempHandler;
    invoke-interface {v6, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 175
    new-instance v7, Lorg/xml/sax/InputSource;

    iget-object v8, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :try_start_1
    invoke-virtual {v1}, Lae/gov/xmlhandler/TempHandler;->getmTempVo()Lae/gov/mol/vo/Temperature;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/vo/Temperature;->getTempValue()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "mTempValue":Ljava/lang/String;
    invoke-virtual {v1}, Lae/gov/xmlhandler/TempHandler;->getmTempVo()Lae/gov/mol/vo/Temperature;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/vo/Temperature;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "mTempIcon":Ljava/lang/String;
    invoke-virtual {v1}, Lae/gov/xmlhandler/TempHandler;->getmTempVo()Lae/gov/mol/vo/Temperature;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/vo/Temperature;->getIcon()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->icon:Ljava/lang/String;

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Get Temp ICon Ap"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 182
    iget-object v7, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->getNumberFormated(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lae/gov/mol/MolApplication;->putTemperature(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget-object v7, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->icon:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 185
    iget-object v7, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    # getter for: Lae/gov/mol/helper/CustomFragment;->IMG_URL:Ljava/lang/String;
    invoke-static {}, Lae/gov/mol/helper/CustomFragment;->access$0()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->icon:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lae/gov/mol/MolApplication;->putTemperatureIcon(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    .end local v1    # "mTempHandler":Lae/gov/xmlhandler/TempHandler;
    .end local v2    # "mTempIcon":Ljava/lang/String;
    .end local v3    # "mTempValue":Ljava/lang/String;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 187
    .restart local v1    # "mTempHandler":Lae/gov/xmlhandler/TempHandler;
    .restart local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v6    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    iget-object v7, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1}, Lae/gov/xmlhandler/TempHandler;->getmTempVo()Lae/gov/mol/vo/Temperature;

    move-result-object v8

    invoke-virtual {v8}, Lae/gov/mol/vo/Temperature;->getTempValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lae/gov/mol/MolApplication;->putTemperature(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "mTempHandler":Lae/gov/xmlhandler/TempHandler;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "xr":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->onPostExecute(Ljava/lang/Void;)V

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
    const v2, 0x7f090239

    const v6, 0x7f090137

    const v5, 0x7f090126

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    iget-object v0, v0, Lae/gov/mol/helper/CustomFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 205
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    iget-object v0, v0, Lae/gov/mol/helper/CustomFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_1
    :goto_1
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v6}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v2, v5}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 267
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v2, v5}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_2

    .line 216
    :cond_4
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v6}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v2, v5}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 218
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 222
    :cond_5
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/helper/CustomFragment;->mLocationChanged:Z

    .line 225
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getTemperature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_6
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v0, v0, Lae/gov/mol/helper/CustomFragmentActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 231
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v0, v0, Lae/gov/mol/helper/CustomFragmentActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getTemperatureIcon(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;

    invoke-direct {v3, p0}, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;-><init>(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    goto/16 :goto_2

    .line 206
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/helper/CustomFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 158
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 159
    return-void
.end method
