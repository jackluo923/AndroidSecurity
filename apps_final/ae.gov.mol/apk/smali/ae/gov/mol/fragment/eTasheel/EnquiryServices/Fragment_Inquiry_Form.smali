.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_Inquiry_Form.java"


# static fields
.field private static mBooleanData:Z


# instance fields
.field inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private length:I

.field mBundle:Landroid/os/Bundle;

.field mButtonSubmit:Landroid/widget/Button;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mEditTextField:Landroid/widget/EditText;

.field mImageViewHome:Landroid/widget/ImageView;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mTextViewHeader:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field strEnterTag:Ljava/lang/String;

.field strIsFrom:Ljava/lang/String;

.field strNumber:Ljava/lang/String;

.field strTitle:Ljava/lang/String;

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBooleanData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    .line 31
    return-void
.end method

.method public static isBooleanData()Z
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBooleanData:Z

    return v0
.end method

.method public static setBooleanData(Z)V
    .locals 0
    .param p0, "mBooleanData"    # Z

    .prologue
    .line 201
    sput-boolean p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBooleanData:Z

    .line 202
    return-void
.end method


# virtual methods
.method public GetInquiry()V
    .locals 6

    .prologue
    const/16 v5, 0x1001

    const/4 v4, 0x1

    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    .line 137
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    const v2, 0x7f09003f

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    const v2, 0x7f09003e

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strEnterTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f0900ca

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;-><init>()V

    .line 141
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->setArguments(Landroid/os/Bundle;)V

    .line 142
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 192
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f0900ee

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;-><init>()V

    .line 145
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->setArguments(Landroid/os/Bundle;)V

    .line 146
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 147
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f0900c9

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Company_Information;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Company_Information;-><init>()V

    .line 149
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Company_Information;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Company_Information;->setArguments(Landroid/os/Bundle;)V

    .line 150
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 151
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Company_Information;
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090108

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;-><init>()V

    .line 153
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->setArguments(Landroid/os/Bundle;)V

    .line 154
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 157
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;
    :cond_4
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09012d

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;-><init>()V

    .line 159
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->setArguments(Landroid/os/Bundle;)V

    .line 160
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 162
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;
    :cond_5
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090131

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;-><init>()V

    .line 164
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->setArguments(Landroid/os/Bundle;)V

    .line 165
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 166
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;
    :cond_6
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09012e

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 167
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;-><init>()V

    .line 168
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->setArguments(Landroid/os/Bundle;)V

    .line 169
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    :cond_7
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090130

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;-><init>()V

    .line 174
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->setArguments(Landroid/os/Bundle;)V

    .line 175
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 176
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;
    :cond_8
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09012b

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 177
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;-><init>()V

    .line 178
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->setArguments(Landroid/os/Bundle;)V

    .line 179
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 180
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;
    :cond_9
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f0900dd

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 181
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;-><init>()V

    .line 182
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->setArguments(Landroid/os/Bundle;)V

    .line 183
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;
    :cond_a
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09012f

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;-><init>()V

    .line 188
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->setArguments(Landroid/os/Bundle;)V

    .line 189
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0
.end method

.method public hideKeybord()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 213
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 214
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 62
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 63
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003d

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strEnterTag:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->setBooleanData(Z)V

    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x1000

    const/16 v6, 0xe

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 73
    const v0, 0x7f030086

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->view:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->view:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mImageViewHome:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->view:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mTextViewHeader:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mTextViewHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strIsFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->view:Landroid/view/View;

    const v1, 0x7f06043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mTextViewTitle:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mTextViewTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strEnterTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0900a7

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->view:Landroid/view/View;

    const v1, 0x7f06043b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f0900d7

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 95
    const/16 v0, 0xc

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    invoke-direct {v2, v4, v3}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->view:Landroid/view/View;

    const v1, 0x7f06043c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mButtonSubmit:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mButtonSubmit:Landroid/widget/Button;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form$2;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->view:Landroid/view/View;

    return-object v0

    .line 97
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f0900fe

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 99
    const/16 v0, 0xa

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    invoke-direct {v2, v4, v3}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 103
    iput v6, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    invoke-direct {v2, v4, v3}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f0900b2

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 107
    iput v6, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    invoke-direct {v2, v4, v3}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f090133

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 111
    iput v6, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    .line 112
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->length:I

    invoke-direct {v2, v4, v3}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 219
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->hideKeybord()V

    .line 220
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 198
    return-void
.end method
