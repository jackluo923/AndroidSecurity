.class public Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Offices_Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;
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
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 254
    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    const-string v2, "ALL"

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    # getter for: Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;
    invoke-static {v4}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->access$0(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)Lae/gov/mol/vo/ContactUsVo;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getContactUsArrayList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ContactUsVo;

    invoke-static {v1, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->access$1(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;Lae/gov/mol/vo/ContactUsVo;)V

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 261
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 263
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    invoke-virtual {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->finish()V

    .line 281
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 282
    return-void

    .line 266
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 273
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    # getter for: Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;
    invoke-static {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->access$0(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)Lae/gov/mol/vo/ContactUsVo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    # getter for: Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;
    invoke-static {v1}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->access$0(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)Lae/gov/mol/vo/ContactUsVo;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->access$2(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;Lae/gov/mol/vo/ContactUsVo;)V

    .line 276
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    # invokes: Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->initMap()V
    invoke-static {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->access$3(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)V

    .line 277
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    # invokes: Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->ShowCurrentLocation()V
    invoke-static {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->access$4(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 249
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 250
    return-void
.end method
