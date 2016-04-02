.class public Lae/gov/mol/fragment/AboutUs/FragmentNews;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentNews.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;,
        Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;,
        Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;
    }
.end annotation


# static fields
.field public static PageNumber:I


# instance fields
.field footerView:Landroid/view/View;

.field height:I

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mListViewNews:Landroid/widget/ListView;

.field mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

.field private mNewsVo:Lae/gov/mol/vo/NewsVo;

.field public mNewsVoData:Lae/gov/mol/vo/NewsVo;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecordIncrement:I

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mStringNewsDate:Ljava/lang/String;

.field mStringNewsid:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewpopItem:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field myImageLoader:Lcom/gov/mol/imageloader/MyImageLoader;

.field popUpContents:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 72
    const/16 v0, 0x19

    iput v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mRecordIncrement:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mStringNewsid:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->height:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mStringNewsDate:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private DropDownMenuAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 6
    .param p1, "itemArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 325
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size :- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 326
    new-instance v0, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1090003

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V

    .line 344
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    return-object v0
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/AboutUs/FragmentNews;Lae/gov/mol/vo/NewsVo;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/AboutUs/FragmentNews;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mRecordIncrement:I

    return v0
.end method

.method public static newInstance()Lae/gov/mol/fragment/AboutUs/FragmentNews;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-direct {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;-><init>()V

    .line 110
    .local v0, "f":Lae/gov/mol/fragment/AboutUs/FragmentNews;
    return-object v0
.end method


# virtual methods
.method public FormateDateForNews(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "Date"    # Ljava/lang/String;

    .prologue
    .line 429
    move-object v4, p1

    .line 430
    .local v4, "mDate":Ljava/lang/String;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 431
    .local v3, "mCalendar":Ljava/util/Calendar;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "String Date....hhh...."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 432
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyyHH:mma"

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 434
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 435
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 436
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MONTH"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getMonth(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getMonth(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 441
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-object v4

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public GetDeviceWidth()V
    .locals 3

    .prologue
    .line 402
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v2}, Lae/gov/mol/helper/CustomFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 404
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 405
    .local v1, "width":I
    mul-int/lit8 v2, v1, 0x23

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->height:I

    .line 406
    return-void
.end method

.method public getMonth(I)Ljava/lang/String;
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 422
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 88
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 89
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mTags:Lae/gov/mol/helper/Tags;

    .line 90
    new-instance v0, Lae/gov/mol/vo/NewsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/NewsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    .line 91
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 92
    iget v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mRecordIncrement:I

    sput v0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->PageNumber:I

    .line 93
    new-instance v0, Lcom/gov/mol/imageloader/MyImageLoader;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lcom/gov/mol/imageloader/MyImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->myImageLoader:Lcom/gov/mol/imageloader/MyImageLoader;

    .line 95
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 96
    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 101
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->popUpContents:[Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->popUpContents:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Facebook"

    aput-object v2, v0, v1

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->popUpContents:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Youtube"

    aput-object v2, v0, v1

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 116
    const v1, 0x7f0300ad

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f060756

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 118
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0300d9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->footerView:Landroid/view/View;

    .line 119
    const v1, 0x7f0605dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mListViewNews:Landroid/widget/ListView;

    .line 120
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->footerView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->footerView:Landroid/view/View;

    new-instance v2, Lae/gov/mol/fragment/AboutUs/FragmentNews$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$1;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mListViewNews:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lae/gov/mol/MolApplication;->getmNewsVo()Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 153
    :cond_0
    new-instance v1, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    :goto_0
    return-object v0

    .line 155
    :cond_1
    invoke-static {}, Lae/gov/mol/MolApplication;->getmNewsVo()Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 317
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mListViewNews:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 319
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->notifyDataSetChanged()V

    .line 414
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 419
    return-void
.end method

.method public popupWindowDogs()Landroid/widget/PopupWindow;
    .locals 3

    .prologue
    .line 350
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, "menulist":Landroid/widget/ListView;
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->popUpContents:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->DropDownMenuAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    new-instance v2, Lae/gov/mol/fragment/AboutUs/FragmentNews$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$4;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 373
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 374
    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 375
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 376
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 378
    return-object v1
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lae/gov/mol/MolApplication;->isNewsVoEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-static {}, Lae/gov/mol/MolApplication;->getmNewsVo()Lae/gov/mol/vo/NewsVo;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    .line 384
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->notifyDataSetChanged()V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, p0, v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    .line 389
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mListViewNews:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mListViewNews:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
