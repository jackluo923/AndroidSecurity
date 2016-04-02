.class public Lae/gov/mol/helper/CommonMethods;
.super Ljava/lang/Object;
.source "CommonMethods.java"


# instance fields
.field currentapiVersion:I

.field private mActivity:Lae/gov/mol/helper/CustomFragmentActivity;


# direct methods
.method public constructor <init>(Lae/gov/mol/helper/CustomFragmentActivity;)V
    .locals 1
    .param p1, "mActivity"    # Lae/gov/mol/helper/CustomFragmentActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lae/gov/mol/helper/CommonMethods;->currentapiVersion:I

    .line 74
    iput-object p1, p0, Lae/gov/mol/helper/CommonMethods;->mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lae/gov/mol/helper/CommonMethods;->currentapiVersion:I

    .line 78
    return-void
.end method

.method public static Bitmap_process([B)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "buffArray"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 409
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 411
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 412
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 413
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 415
    const v2, 0x8000

    new-array v2, v2, [B

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 417
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 419
    array-length v2, p0

    invoke-static {p0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 420
    .local v0, "imageBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static IsUpcoming(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 154
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0900c7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    const v2, 0x7f0901b4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090135

    new-instance v4, Lae/gov/mol/helper/CommonMethods$1;

    invoke-direct {v4}, Lae/gov/mol/helper/CommonMethods$1;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 167
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 168
    const/4 v2, 0x1

    return v2
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 8
    .param p0, "mMessage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    .line 130
    sget-boolean v5, Lae/gov/mol/MolApplication;->LogEnable:Z

    if-eqz v5, :cond_1

    .line 131
    const/4 v2, -0x1

    .line 132
    .local v2, "lineNumber":I
    const-string v1, ""

    .line 133
    .local v1, "fullClassName":Ljava/lang/String;
    const-string v0, ""

    .line 134
    .local v0, "className":Ljava/lang/String;
    const-string v4, ""

    .line 136
    .local v4, "methodName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 137
    .local v3, "mStackTraceElements":[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-le v5, v6, :cond_0

    .line 138
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 139
    aget-object v5, v3, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    aget-object v5, v3, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 144
    :cond_0
    const-string v5, "MOL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Msg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "fullClassName":Ljava/lang/String;
    .end local v2    # "lineNumber":I
    .end local v3    # "mStackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v4    # "methodName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static ShowAlert(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "customFrag"    # Lae/gov/mol/helper/CustomFragment;
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mMessage"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 280
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lae/gov/mol/helper/CustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 284
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090135

    new-instance v4, Lae/gov/mol/helper/CommonMethods$7;

    invoke-direct {v4, p0, p3}, Lae/gov/mol/helper/CommonMethods$7;-><init>(Lae/gov/mol/helper/CustomFragment;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 292
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 294
    return-void
.end method

.method public static ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mMessage"    # Ljava/lang/String;
    .param p3, "isActivityFinish"    # Z

    .prologue
    .line 262
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 266
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090135

    new-instance v4, Lae/gov/mol/helper/CommonMethods$6;

    invoke-direct {v4, p3, p0}, Lae/gov/mol/helper/CommonMethods$6;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 274
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 276
    return-void
.end method

.method public static ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mMessage"    # Ljava/lang/String;
    .param p3, "isActivityFinish"    # Z
    .param p4, "mDialogClickListner"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 317
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 320
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090135

    invoke-virtual {v2, v3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 323
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 325
    return-void
.end method

.method public static ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "mActivity"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mMessage"    # Ljava/lang/String;
    .param p3, "isFragmentFinish"    # Z

    .prologue
    .line 300
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 303
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 304
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090135

    new-instance v4, Lae/gov/mol/helper/CommonMethods$8;

    invoke-direct {v4, p3, p0}, Lae/gov/mol/helper/CommonMethods$8;-><init>(ZLae/gov/mol/helper/CustomFragmentActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 312
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 314
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/helper/CommonMethods;)Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods;->mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method public static getDaysDiff(JJ)I
    .locals 7
    .param p0, "dateOne"    # J
    .param p2, "dateTwo"    # J

    .prologue
    .line 637
    new-instance v0, Lorg/joda/time/Period;

    invoke-static {}, Lorg/joda/time/PeriodType;->days()Lorg/joda/time/PeriodType;

    move-result-object v5

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Period;-><init>(JJLorg/joda/time/PeriodType;)V

    .line 639
    .local v0, "mPeriod":Lorg/joda/time/Period;
    invoke-virtual {v0}, Lorg/joda/time/Period;->getDays()I

    move-result v6

    .line 640
    .local v6, "day":I
    return v6
.end method

.method public static getElapsedDaysText(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 13
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    .line 622
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 623
    .local v3, "milliSeconds1":J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 624
    .local v5, "milliSeconds2":J
    sub-long v9, v5, v3

    const-wide/16 v11, 0x3e8

    div-long v7, v9, v11

    .line 625
    .local v7, "periodSeconds":J
    const-wide/16 v9, 0x3c

    div-long v9, v7, v9

    const-wide/16 v11, 0x3c

    div-long/2addr v9, v11

    const-wide/16 v11, 0x18

    div-long v0, v9, v11

    .line 626
    .local v0, "elapsedDays":J
    const-string v9, "%d days ago"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, "elapsedDaysText":Ljava/lang/String;
    return-object v2
.end method

.method public static getImageBitmapFromUri(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p0, "mPath"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 371
    const/4 v3, 0x0

    .line 373
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 378
    :goto_0
    if-eqz v3, :cond_1

    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "buffer":[B
    :try_start_1
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 387
    :goto_1
    if-eqz v0, :cond_0

    .line 389
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Bitmap_process([B)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 399
    .end local v0    # "buffer":[B
    :goto_2
    return-object v2

    .line 374
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 382
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buffer":[B
    :catch_1
    move-exception v1

    .line 384
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 393
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 399
    .end local v0    # "buffer":[B
    :cond_1
    :goto_3
    const/4 v2, 0x0

    goto :goto_2

    .line 394
    .restart local v0    # "buffer":[B
    :catch_2
    move-exception v1

    .line 396
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getImageFromUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "mPath"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 337
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 342
    :goto_0
    if-eqz v2, :cond_1

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, "buffer":[B
    :try_start_1
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 351
    :goto_1
    if-eqz v0, :cond_0

    .line 352
    invoke-static {v0}, Lorg/kobjects/base64/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 361
    .end local v0    # "buffer":[B
    :goto_2
    return-object v3

    .line 338
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buffer":[B
    :catch_1
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 355
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 361
    .end local v0    # "buffer":[B
    :cond_1
    :goto_3
    const-string v3, ""

    goto :goto_2

    .line 356
    .restart local v0    # "buffer":[B
    :catch_2
    move-exception v1

    .line 358
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getImageSizeInKB(Ljava/lang/String;)J
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 666
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return-wide v1

    .line 670
    :catch_0
    move-exception v1

    .line 674
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getLongDate(Ljava/lang/String;)J
    .locals 5
    .param p0, "mDate_DDMMYYYY"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 505
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 507
    .local v2, "mDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 508
    .local v1, "mDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 512
    .end local v1    # "mDate":Ljava/util/Date;
    :goto_0
    return-wide v3

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 512
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public static getNumberFormated(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 523
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "mDecimalFormat":Ljava/text/DecimalFormat;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 528
    .end local v0    # "mDecimalFormat":Ljava/text/DecimalFormat;
    .end local p0    # "value":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 525
    .restart local p0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static showMenu(Landroid/view/View;Landroid/app/Activity;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "mFragmentActivity"    # Landroid/app/Activity;

    .prologue
    .line 683
    const v1, 0x7f0a0075

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 684
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    invoke-direct {v0, p1, p0}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 685
    .local v0, "mPopupMenu":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 686
    new-instance v1, Lae/gov/mol/helper/CommonMethods$10;

    invoke-direct {v1, p1}, Lae/gov/mol/helper/CommonMethods$10;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnDismissListener(Landroid/support/v7/widget/PopupMenu$OnDismissListener;)V

    .line 695
    new-instance v1, Lae/gov/mol/helper/CommonMethods$11;

    invoke-direct {v1, p1}, Lae/gov/mol/helper/CommonMethods$11;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 718
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 719
    return-void
.end method

.method public static stringToCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 600
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 601
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 604
    .local v1, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 605
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-object v0

    .line 607
    :catch_0
    move-exception v2

    .line 609
    .local v2, "e":Ljava/text/ParseException;
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public FormateDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "Date"    # Ljava/lang/String;

    .prologue
    .line 465
    move-object v3, p1

    .line 466
    .local v3, "mDate":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss"

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 469
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyy"

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 470
    .local v4, "newformat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 471
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 476
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "newformat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 472
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public FormateDateForNews(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "Date"    # Ljava/lang/String;

    .prologue
    .line 483
    move-object v3, p1

    .line 484
    .local v3, "mDate":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "String Date....hhh...."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 485
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyyHH:mma"

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 488
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyy"

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 489
    .local v4, "newformat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 490
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 495
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "newformat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 491
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public ShowAlert(Ljava/lang/String;)V
    .locals 5
    .param p1, "mMessage"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lae/gov/mol/helper/CommonMethods;->mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0900c7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901a6

    new-instance v4, Lae/gov/mol/helper/CommonMethods$2;

    invoke-direct {v4, p0}, Lae/gov/mol/helper/CommonMethods$2;-><init>(Lae/gov/mol/helper/CommonMethods;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 186
    const v3, 0x7f0901a7

    new-instance v4, Lae/gov/mol/helper/CommonMethods$3;

    invoke-direct {v4, p0}, Lae/gov/mol/helper/CommonMethods$3;-><init>(Lae/gov/mol/helper/CommonMethods;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 198
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 199
    return-void
.end method

.method public ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V
    .locals 5
    .param p1, "mMessage"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "isFinish"    # Z
    .param p4, "mView"    # Landroid/view/View;

    .prologue
    .line 228
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lae/gov/mol/helper/CommonMethods;->mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090135

    new-instance v4, Lae/gov/mol/helper/CommonMethods$5;

    invoke-direct {v4, p0, p3, p4}, Lae/gov/mol/helper/CommonMethods$5;-><init>(Lae/gov/mol/helper/CommonMethods;ZLandroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 246
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 247
    return-void
.end method

.method public ShowAlertOk(Ljava/lang/String;)V
    .locals 5
    .param p1, "mMessage"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lae/gov/mol/helper/CommonMethods;->mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0900c7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090135

    new-instance v4, Lae/gov/mol/helper/CommonMethods$4;

    invoke-direct {v4, p0}, Lae/gov/mol/helper/CommonMethods$4;-><init>(Lae/gov/mol/helper/CommonMethods;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 220
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 221
    return-void
.end method

.method public checkEmail(Ljava/lang/String;)Z
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 560
    const-string v3, "[a-z0-9A-Z\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-z0-9][a-z0-9\\-]{0,64}(\\.[a-z0-9][a-z0-9\\-]{0,25})+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 568
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 570
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 572
    .local v0, "matchFound":Z
    return v0
.end method

.method public checkTextValidation(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "mEditText"    # Landroid/widget/EditText;

    .prologue
    .line 533
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 534
    .local v0, "Textfilters":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lae/gov/mol/helper/CommonMethods$9;

    invoke-direct {v2, p0}, Lae/gov/mol/helper/CommonMethods$9;-><init>(Lae/gov/mol/helper/CommonMethods;)V

    aput-object v2, v0, v1

    .line 551
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 552
    return-void
.end method

.method public getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 7
    .param p1, "mResultResponse"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 434
    .local v4, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 435
    .local v3, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 436
    .local v5, "xreader":Lorg/xml/sax/XMLReader;
    new-instance v2, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;

    invoke-direct {v2}, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;-><init>()V

    .line 437
    .local v2, "mErrorHandler":Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 438
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 439
    .local v1, "iSource":Lorg/xml/sax/InputSource;
    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 440
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 441
    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 442
    invoke-virtual {v2}, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->getmErrorHandlerVo()Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 456
    .end local v1    # "iSource":Lorg/xml/sax/InputSource;
    .end local v2    # "mErrorHandler":Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;
    .end local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "xreader":Lorg/xml/sax/XMLReader;
    :goto_0
    return-object v6

    .line 444
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 456
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 449
    :catch_1
    move-exception v0

    .line 451
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 452
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v0

    .line 454
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1
.end method

.method public getImageFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "mBase64"    # Ljava/lang/String;

    .prologue
    .line 651
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Base "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 652
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 653
    .local v0, "decodedString":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 656
    .end local v0    # "decodedString":[B
    :goto_0
    return-object v1

    .line 654
    :catch_0
    move-exception v1

    .line 656
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 93
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 93
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isConnectingToInternet()Z
    .locals 5

    .prologue
    .line 110
    iget-object v3, p0, Lae/gov/mol/helper/CommonMethods;->mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 114
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 122
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 116
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 118
    const/4 v3, 0x1

    goto :goto_1

    .line 115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isDeviceVersionHoneycombAbove()Z
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Lae/gov/mol/helper/CommonMethods;->currentapiVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRedAsteriskSign(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 583
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 584
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 585
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 586
    .local v2, "start":I
    add-int/lit8 v1, v2, 0x1

    .line 587
    .local v1, "end":I
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x10000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 589
    return-object v0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "mMessage"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods;->mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    return-void
.end method
