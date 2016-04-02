.class public Lae/gov/mol/fragment/eTasheel/Fragment_WebView;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_WebView.java"


# static fields
.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private isEServiceCall:Z

.field private mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mImageView:Landroid/widget/ImageView;

.field private mTextViewTitle:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->isEServiceCall:Z

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mTitle:Ljava/lang/String;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/Fragment_WebView;)Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "mBundle":Landroid/os/Bundle;
    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mUrl:Ljava/lang/String;

    .line 42
    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->isEServiceCall:Z

    .line 43
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mTitle:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    const v1, 0x7f0300d3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mImageView:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/Fragment_WebView$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView$1;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_WebView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f0606ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mWebView:Landroid/webkit/WebView;

    .line 60
    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mTextViewTitle:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mWebView:Landroid/webkit/WebView;

    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 63
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    iget-boolean v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->isEServiceCall:Z

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    instance-of v1, v1, Lae/gov/mol/helper/CustomFragmentActivity;

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 67
    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_WebView$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView$2;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_WebView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 82
    :cond_0
    return-object v0
.end method
