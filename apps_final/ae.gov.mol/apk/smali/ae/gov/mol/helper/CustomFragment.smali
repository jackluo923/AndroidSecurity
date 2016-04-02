.class public Lae/gov/mol/helper/CustomFragment;
.super Landroid/support/v4/app/Fragment;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;,
        Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;,
        Lae/gov/mol/helper/CustomFragment$TempAsycProcess;,
        Lae/gov/mol/helper/CustomFragment$getCompanyList;
    }
.end annotation


# static fields
.field private static IMG_URL:Ljava/lang/String;


# instance fields
.field height:I

.field private isAlreadyShown:Z

.field private isDatePickerCancelled:Z

.field private mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field public mIconBase64:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field public mLocationChanged:Z

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field private mString:Ljava/lang/String;

.field message:Ljava/lang/String;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "http://openweathermap.org/img/w/"

    sput-object v0, Lae/gov/mol/helper/CustomFragment;->IMG_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 76
    iput-boolean v0, p0, Lae/gov/mol/helper/CustomFragment;->isAlreadyShown:Z

    .line 77
    iput v0, p0, Lae/gov/mol/helper/CustomFragment;->height:I

    .line 78
    iput v0, p0, Lae/gov/mol/helper/CustomFragment;->width:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment;->message:Ljava/lang/String;

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lae/gov/mol/helper/CustomFragment;->IMG_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/helper/CustomFragment;)Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/helper/CustomFragment;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lae/gov/mol/helper/CustomFragment;->isAlreadyShown:Z

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lae/gov/mol/helper/CustomFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/helper/CustomFragment;Z)V
    .locals 0

    .prologue
    .line 551
    iput-boolean p1, p0, Lae/gov/mol/helper/CustomFragment;->isDatePickerCancelled:Z

    return-void
.end method

.method static synthetic access$6(Lae/gov/mol/helper/CustomFragment;)Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lae/gov/mol/helper/CustomFragment;->isDatePickerCancelled:Z

    return v0
.end method


# virtual methods
.method public BrowseLinkOpenSystemBrowser(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "mFragmentActivity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "mUrl"    # Ljava/lang/String;
    .param p3, "mTitlem"    # Ljava/lang/String;
    .param p4, "isActivityFinish"    # Z

    .prologue
    .line 391
    :try_start_0
    const-string v1, "aspx"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const-string v1, "aspx>"

    const-string v2, "aspx?"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 393
    const-string v1, "aspx&gt;"

    const-string v2, "aspx?"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 394
    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 395
    const-string v1, "andUpdStat"

    const-string v2, "&UpdStat"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 396
    const-string v1, "andatt"

    const-string v2, "&att"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 398
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Replaced URl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 399
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lae/gov/mol/helper/CustomFragment;->startActivity(Landroid/content/Intent;)V

    .line 400
    if-eqz p4, :cond_1

    .line 401
    invoke-static {}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->finishActivity()V

    .line 402
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public BrowseLinkWithinApp(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "mCustomFragmentActivity"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p2, "mUrl"    # Ljava/lang/String;
    .param p3, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 417
    :try_start_0
    new-instance v2, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;

    invoke-direct {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;-><init>()V

    .line 418
    .local v2, "mFragment_WebView":Lae/gov/mol/fragment/eTasheel/Fragment_WebView;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 419
    .local v1, "mBundle":Landroid/os/Bundle;
    const-string v3, "aspx"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    const-string v3, "aspx>"

    const-string v4, "aspx?"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 421
    const-string v3, "aspx&gt;"

    const-string v4, "aspx?"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 422
    const-string v3, "&amp;"

    const-string v4, "&"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 423
    const-string v3, "andUpdStat"

    const-string v4, "&UpdStat"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 424
    const-string v3, "andatt"

    const-string v4, "&att"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 426
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replaced URl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 427
    const v3, 0x7f090052

    invoke-virtual {p0, v3}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const v3, 0x7f090053

    invoke-virtual {p0, v3}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    const-string v3, "title"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v2, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->setArguments(Landroid/os/Bundle;)V

    .line 431
    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-virtual {p1, v2, v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v1    # "mBundle":Landroid/os/Bundle;
    .end local v2    # "mFragment_WebView":Lae/gov/mol/fragment/eTasheel/Fragment_WebView;
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GetDeviceHeight(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 369
    invoke-virtual {p0}, Lae/gov/mol/helper/CustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 370
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 372
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lae/gov/mol/helper/CustomFragment;->width:I

    .line 373
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/helper/CustomFragment;->height:I

    .line 374
    iget v1, p0, Lae/gov/mol/helper/CustomFragment;->height:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/helper/CustomFragment;->height:I

    .line 376
    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lae/gov/mol/helper/CustomFragment;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 380
    :cond_0
    return-void
.end method

.method protected buildAlertMessageNoGps(Landroid/support/v4/app/FragmentActivity;)V
    .locals 5
    .param p1, "mCustomFragmentActivity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 276
    iget-boolean v2, p0, Lae/gov/mol/helper/CustomFragment;->isAlreadyShown:Z

    if-nez v2, :cond_0

    .line 277
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0900ab

    invoke-virtual {p0, v2}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 279
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 280
    const v3, 0x7f0901a6

    invoke-virtual {p0, v3}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lae/gov/mol/helper/CustomFragment$2;

    invoke-direct {v4, p0}, Lae/gov/mol/helper/CustomFragment$2;-><init>(Lae/gov/mol/helper/CustomFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 286
    const v3, 0x7f0901a7

    invoke-virtual {p0, v3}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lae/gov/mol/helper/CustomFragment$3;

    invoke-direct {v4, p0}, Lae/gov/mol/helper/CustomFragment$3;-><init>(Lae/gov/mol/helper/CustomFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 294
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 295
    const/4 v2, 0x1

    iput-boolean v2, p0, Lae/gov/mol/helper/CustomFragment;->isAlreadyShown:Z

    .line 298
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public getBase64FromByte([B)Ljava/lang/String;
    .locals 1
    .param p1, "mImage"    # [B

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDateFormatted(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p1, "mString"    # Ljava/lang/String;

    .prologue
    .line 652
    const-string v4, "dd/MM/yyyy"

    .line 653
    .local v4, "mDateFormat1":Ljava/lang/String;
    const-string v5, "dd-MM-yyyy"

    .line 656
    .local v5, "mDateFormat2":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 658
    .local v1, "df":Ljava/text/SimpleDateFormat;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 661
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 678
    :goto_0
    return-object v3

    .line 663
    :catch_0
    move-exception v2

    .line 665
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 671
    .restart local v1    # "df":Ljava/text/SimpleDateFormat;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 672
    :catch_1
    move-exception v6

    .line 676
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 677
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 678
    .local v3, "mDate":Ljava/util/Date;
    goto :goto_0
.end method

.method public getImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v3, 0x0

    .line 306
    .local v3, "con":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 308
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lae/gov/mol/helper/CustomFragment;->IMG_URL:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 309
    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 310
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 311
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 312
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 315
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 316
    const/16 v6, 0x400

    new-array v2, v6, [B

    .line 317
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 319
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 322
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lae/gov/mol/helper/CustomFragment;->getBase64FromByte([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 328
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    :goto_2
    return-object v6

    .line 320
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    :cond_0
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 324
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    :catch_0
    move-exception v5

    .line 325
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 328
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 329
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 332
    :goto_4
    const/4 v6, 0x0

    goto :goto_2

    .line 327
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 328
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 329
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 330
    :goto_6
    throw v6

    .line 328
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    :catch_1
    move-exception v7

    goto :goto_1

    .line 329
    :catch_2
    move-exception v7

    goto :goto_2

    .line 328
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .restart local v5    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 329
    :catch_4
    move-exception v6

    goto :goto_4

    .line 328
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_5
    move-exception v7

    goto :goto_5

    .line 329
    :catch_6
    move-exception v7

    goto :goto_6
.end method

.method public getImageFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "mBase64"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 344
    .local v1, "encodedImage":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    .end local v1    # "encodedImage":[B
    :goto_0
    return-object v2

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 2
    .param p1, "mTextView"    # Landroid/widget/TextView;

    .prologue
    .line 123
    const v1, 0x7f090136

    invoke-virtual {p0, v1}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "mStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method public goToHomeFromFragment(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 543
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/helper/MOLLocationManager;->stopListener()V

    .line 545
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 546
    .local v0, "mIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v0}, Lae/gov/mol/helper/CustomFragment;->startActivity(Landroid/content/Intent;)V

    .line 548
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-virtual {p0}, Lae/gov/mol/helper/CustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lae/gov/mol/helper/CustomFragmentActivity;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lae/gov/mol/helper/CustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 98
    const v0, 0x7f060757

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment;->mImageView:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/helper/CustomFragment$1;

    invoke-direct {v1, p0}, Lae/gov/mol/helper/CustomFragment$1;-><init>(Lae/gov/mol/helper/CustomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public showDatePicker(Landroid/content/Context;Landroid/webkit/WebView;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mWebView"    # Landroid/webkit/WebView;
    .param p4, "mCurrentDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/KeyValueVo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "mKeyValueVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/KeyValueVo;>;"
    const/4 v8, 0x0

    .line 561
    invoke-virtual {p0, p4}, Lae/gov/mol/helper/CustomFragment;->getDateFormatted(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 562
    .local v7, "mDate":Ljava/util/Date;
    const-string v1, ""

    iput-object v1, p0, Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;

    .line 563
    iput-boolean v8, p0, Lae/gov/mol/helper/CustomFragment;->isDatePickerCancelled:Z

    .line 564
    if-eqz v7, :cond_0

    .line 566
    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v6

    .line 568
    .local v6, "mDay":I
    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v5

    .line 570
    .local v5, "mMonth":I
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v4, v1, 0x76c

    .line 572
    .local v4, "mYear":I
    new-instance v0, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;

    new-instance v3, Lae/gov/mol/helper/CustomFragment$4;

    invoke-direct {v3, p0, p3}, Lae/gov/mol/helper/CustomFragment$4;-><init>(Lae/gov/mol/helper/CustomFragment;Ljava/util/ArrayList;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;-><init>(Lae/gov/mol/helper/CustomFragment;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 613
    .local v0, "mDatePickerDialog":Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;
    invoke-virtual {v0, v8}, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 615
    new-instance v1, Lae/gov/mol/helper/CustomFragment$5;

    invoke-direct {v1, p0}, Lae/gov/mol/helper/CustomFragment$5;-><init>(Lae/gov/mol/helper/CustomFragment;)V

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 630
    new-instance v1, Lae/gov/mol/helper/CustomFragment$6;

    invoke-direct {v1, p0, p2}, Lae/gov/mol/helper/CustomFragment$6;-><init>(Lae/gov/mol/helper/CustomFragment;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 641
    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;->show()V

    .line 643
    .end local v0    # "mDatePickerDialog":Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;
    .end local v4    # "mYear":I
    .end local v5    # "mMonth":I
    .end local v6    # "mDay":I
    :cond_0
    return-void
.end method

.method public showPDF(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "mWebView"    # Landroid/webkit/WebView;
    .param p2, "mWebUrl"    # Ljava/lang/String;

    .prologue
    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://docs.google.com/gview?embedded=true&url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 717
    return-void
.end method
