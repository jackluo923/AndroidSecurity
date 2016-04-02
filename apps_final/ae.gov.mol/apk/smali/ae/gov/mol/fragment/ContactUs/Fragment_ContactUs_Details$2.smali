.class Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;
.super Ljava/lang/Object;
.source "Fragment_ContactUs_Details.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->addMarker(Ljava/lang/String;Ljava/lang/String;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 234
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mapWrapperLayout:Lae/gov/mol/helper/MapWrapperLayout;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v1, v1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->popup:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lae/gov/mol/helper/MapWrapperLayout;->setMarkerWithInfoWindow(Lcom/google/android/gms/maps/model/Marker;Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mImageViewCancelInfoWindow:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2$1;

    invoke-direct {v1, p0, p1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2$1;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;Lcom/google/android/gms/maps/model/Marker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewOfficeName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v1, v1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringOfficeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewAddress:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v1, v1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewDepartment:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v1, v1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringDepartment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->popup:Landroid/view/View;

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method
