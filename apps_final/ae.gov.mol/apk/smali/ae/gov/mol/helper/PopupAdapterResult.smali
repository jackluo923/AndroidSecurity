.class public Lae/gov/mol/helper/PopupAdapterResult;
.super Ljava/lang/Object;
.source "PopupAdapterResult.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

.field mStringAddress:Ljava/lang/String;

.field mStringDepartment:Ljava/lang/String;

.field mStringFaxNumber:Ljava/lang/String;

.field mStringOfficeName:Ljava/lang/String;

.field mStringPhoneNumber:Ljava/lang/String;

.field mStringWorkingTime:Ljava/lang/String;

.field mTextViewAddress:Landroid/widget/TextView;

.field mTextViewDepartment:Landroid/widget/TextView;

.field mTextViewOfficeName:Landroid/widget/TextView;

.field mTextViewWorkingTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lae/gov/mol/vo/ContactUsVo$ContactUsData;)V
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mContactUsData2"    # Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/helper/PopupAdapterResult;->inflater:Landroid/view/LayoutInflater;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/PopupAdapterResult;->mStringOfficeName:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/PopupAdapterResult;->mStringPhoneNumber:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/PopupAdapterResult;->mStringFaxNumber:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/PopupAdapterResult;->mStringAddress:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/PopupAdapterResult;->mStringDepartment:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/PopupAdapterResult;->mStringWorkingTime:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lae/gov/mol/helper/PopupAdapterResult;->inflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p2, p0, Lae/gov/mol/helper/PopupAdapterResult;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    .line 37
    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 46
    iget-object v1, p0, Lae/gov/mol/helper/PopupAdapterResult;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300e3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "popup":Landroid/view/View;
    const v1, 0x7f060772

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/helper/PopupAdapterResult;->mTextViewOfficeName:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f060774

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/helper/PopupAdapterResult;->mTextViewAddress:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f060775

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/helper/PopupAdapterResult;->mTextViewDepartment:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f060776

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/helper/PopupAdapterResult;->mTextViewWorkingTime:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lae/gov/mol/helper/PopupAdapterResult;->mTextViewOfficeName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lae/gov/mol/helper/PopupAdapterResult;->mTextViewAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/helper/PopupAdapterResult;->mStringAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lae/gov/mol/helper/PopupAdapterResult;->mTextViewDepartment:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/helper/PopupAdapterResult;->mStringDepartment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
