.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;
.super Landroid/os/AsyncTask;
.source "FragmentExpiredCardLabourCardDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackProcessRenewCard"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

.field private mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;Landroid/content/Context;)V
    .locals 1
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 169
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 170
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Lae/gov/mol/vo/AlleServicesData;

    invoke-direct {v0}, Lae/gov/mol/vo/AlleServicesData;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    .line 172
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 182
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/PostParseGet;->getAllServiceKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/AlleServicesData;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    .line 183
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->publishProgress([Ljava/lang/Object;)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 203
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 206
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v1

    iget-boolean v1, v1, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v1, :cond_4

    .line 207
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 213
    :cond_2
    :goto_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getAlleServicesByKeyData()Lae/gov/mol/vo/AlleServicesData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getAlleServicesByKeyData()Lae/gov/mol/vo/AlleServicesData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getAlleServicesByKeyData()Lae/gov/mol/vo/AlleServicesData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/AlleServicesVo;->getServices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 217
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getAlleServicesByKeyData()Lae/gov/mol/vo/AlleServicesData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/AlleServicesVo;->getServices()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "mServiceDataVos":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ServiceDataVo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 220
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/ServiceDataVo;

    invoke-static {v2, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;Lae/gov/mol/vo/ServiceDataVo;)V

    .line 221
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->CalleServiceDetail()V

    .line 228
    .end local v0    # "mServiceDataVos":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ServiceDataVo;>;"
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    :cond_4
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v1

    iget-boolean v1, v1, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v1, :cond_5

    .line 209
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    const v3, 0x7f090239

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 210
    :cond_5
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v1

    iget-boolean v1, v1, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 224
    .restart local v0    # "mServiceDataVos":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ServiceDataVo;>;"
    :cond_6
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    const v3, 0x7f09008b

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    const v4, 0x7f090137

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 177
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 178
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 192
    aget-object v1, p1, v2

    instance-of v1, v1, Lae/gov/mol/vo/AlleServicesData;

    if-eqz v1, :cond_0

    .line 193
    aget-object v0, p1, v2

    check-cast v0, Lae/gov/mol/vo/AlleServicesData;

    .line 194
    .local v0, "mAlleServicesData":Lae/gov/mol/vo/AlleServicesData;
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->setAlleServicesByKeyData(Lae/gov/mol/vo/AlleServicesData;)V

    .line 199
    .end local v0    # "mAlleServicesData":Lae/gov/mol/vo/AlleServicesData;
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 200
    return-void
.end method
