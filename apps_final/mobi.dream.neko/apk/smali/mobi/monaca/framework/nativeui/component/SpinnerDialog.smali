.class public Lmobi/monaca/framework/nativeui/component/SpinnerDialog;
.super Landroid/app/Dialog;
.source "SpinnerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONArray;)V
    .locals 34
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual/range {p1 .. p1}, Lmobi/monaca/framework/nativeui/UIContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x103000a

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    const/16 v31, 0x7d3

    invoke-virtual/range {v30 .. v31}, Landroid/view/Window;->setType(I)V

    .line 50
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->requestWindowFeature(I)Z

    .line 53
    const/16 v21, 0x0

    .line 55
    .local v21, "spinnerImagePath":Ljava/lang/String;
    const/16 v30, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 61
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v17

    .line 62
    .local v17, "numFrames":I
    const/16 v30, 0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 63
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    sget v32, Lmobi/monaca/framework/psedo/R$string;->exception_spinner_frame:I

    invoke-static/range {v32 .. v32}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V

    throw v30

    .line 56
    .end local v17    # "numFrames":I
    :catch_0
    move-exception v7

    .line 57
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V

    throw v30

    .line 66
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v17    # "numFrames":I
    :cond_0
    const/16 v30, 0x2

    const/16 v31, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v16

    .line 67
    .local v16, "interval":I
    const/16 v30, 0x32

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    .line 68
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    sget v32, Lmobi/monaca/framework/psedo/R$string;->exception_spinner_interval:I

    invoke-static/range {v32 .. v32}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V

    throw v30

    .line 71
    :cond_1
    const/16 v30, 0x3

    sget v31, Lmobi/monaca/framework/psedo/R$string;->nc_default_black:I

    invoke-static/range {v31 .. v31}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 72
    .local v18, "spinnerBackgroundColor":Ljava/lang/String;
    sget v30, Lmobi/monaca/framework/psedo/R$string;->nc_null:I

    invoke-static/range {v30 .. v30}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 73
    sget v30, Lmobi/monaca/framework/psedo/R$string;->nc_default_black:I

    invoke-static/range {v30 .. v30}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v18

    .line 76
    :cond_2
    const/16 v30, 0x4

    const-wide v31, 0x3fe99999a0000000L    # 0.800000011920929

    move-object/from16 v0, p2

    move/from16 v1, v30

    move-wide/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v5, v0

    .line 77
    .local v5, "backgroundOpacity":F
    float-to-double v0, v5

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_3

    float-to-double v0, v5

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_4

    .line 78
    :cond_3
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    sget v32, Lmobi/monaca/framework/psedo/R$string;->exception_spinner_bgopacity:I

    invoke-static/range {v32 .. v32}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V

    throw v30

    .line 82
    :cond_4
    :try_start_1
    new-instance v28, Landroid/graphics/drawable/ColorDrawable;

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 83
    .local v28, "windowDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    float-to-double v0, v5

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    const/4 v11, 0x0

    .line 90
    .local v11, "fullSpinner":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_5

    sget v30, Lmobi/monaca/framework/psedo/R$string;->nc_null:I

    invoke-static/range {v30 .. v30}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 91
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    sget v31, Lmobi/monaca/framework/psedo/R$drawable;->spinner:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v22

    .line 92
    .local v22, "spinnerInputSteam":Ljava/io/InputStream;
    invoke-static/range {v22 .. v22}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 93
    const/16 v17, 0xc

    .line 120
    .end local v22    # "spinnerInputSteam":Ljava/io/InputStream;
    :goto_0
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 122
    .local v4, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v9, v30, v31

    .line 126
    .local v9, "frameHeight":F
    const/16 v29, 0x0

    .line 127
    .local v29, "y":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_c

    .line 128
    int-to-float v0, v12

    move/from16 v30, v0

    mul-float v30, v30, v9

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v29

    .line 130
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v9

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_6

    .line 131
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    sub-int v30, v30, v29

    move/from16 v0, v30

    int-to-float v9, v0

    .line 134
    :cond_6
    const/16 v30, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-static {v11, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 135
    .local v8, "frameBitmap":Landroid/graphics/Bitmap;
    new-instance v30, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 127
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 85
    .end local v4    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v8    # "frameBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "frameHeight":F
    .end local v11    # "fullSpinner":Landroid/graphics/Bitmap;
    .end local v12    # "i":I
    .end local v28    # "windowDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v29    # "y":I
    :catch_1
    move-exception v7

    .line 86
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    sget v32, Lmobi/monaca/framework/psedo/R$string;->exception_spinner_bgcolor:I

    invoke-static/range {v32 .. v32}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V

    throw v30

    .line 95
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "fullSpinner":Landroid/graphics/Bitmap;
    .restart local v28    # "windowDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_7
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    sget v31, Lmobi/monaca/framework/psedo/R$string;->png:I

    invoke-static/range {v31 .. v31}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_8

    .line 96
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    sget v32, Lmobi/monaca/framework/psedo/R$string;->exception_spinner_img:I

    invoke-static/range {v32 .. v32}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V

    throw v30

    .line 99
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "fullImagePath":Ljava/lang/String;
    sget v30, Lmobi/monaca/framework/psedo/R$string;->asset_url:I

    invoke-static/range {v30 .. v30}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 102
    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->openAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    goto/16 :goto_0

    .line 103
    :catch_2
    move-exception v7

    .line 104
    .local v7, "e":Ljava/io/IOException;
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    sget v32, Lmobi/monaca/framework/psedo/R$string;->exception_spinner_imgnotfound:I

    invoke-static/range {v32 .. v32}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V

    throw v30

    .line 107
    .end local v7    # "e":Ljava/io/IOException;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    sget v31, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 108
    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    sget v31, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    invoke-direct/range {v31 .. v31}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 110
    :cond_a
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v13, "imageFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_b

    .line 112
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto/16 :goto_0

    .line 114
    :cond_b
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    sget v32, Lmobi/monaca/framework/psedo/R$string;->exception_spinner_imgnotfound:I

    invoke-static/range {v32 .. v32}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V

    throw v30

    .line 139
    .end local v10    # "fullImagePath":Ljava/lang/String;
    .end local v13    # "imageFile":Ljava/io/File;
    .restart local v4    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v9    # "frameHeight":F
    .restart local v12    # "i":I
    .restart local v29    # "y":I
    :cond_c
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .local v19, "spinnerContent":Landroid/widget/LinearLayout;
    const/16 v30, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 143
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v15, "imageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 146
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v14, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    sget-object v30, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v30, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->mTitleView:Landroid/widget/TextView;

    .line 154
    const/16 v30, 0x7

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    move/from16 v1, v30

    move-wide/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v25, v0

    .line 155
    .local v25, "titleFontScale":F
    const/16 v30, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->getFontSizeFromDip(I)I

    move-result v6

    .line 156
    .local v6, "defaultFontSize":I
    int-to-float v0, v6

    move/from16 v30, v0

    mul-float v26, v25, v30

    .line 157
    .local v26, "titleFontSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 159
    const/16 v30, 0x6

    sget v31, Lmobi/monaca/framework/psedo/R$string;->nc_default_white:I

    invoke-static/range {v31 .. v31}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 160
    .local v24, "titleColor":Ljava/lang/String;
    sget v30, Lmobi/monaca/framework/psedo/R$string;->nc_null:I

    invoke-static/range {v30 .. v30}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 161
    sget v30, Lmobi/monaca/framework/psedo/R$string;->nc_default_white:I

    invoke-static/range {v30 .. v30}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v24

    .line 165
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 170
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v27, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 172
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff8000000000000L    # 1.5

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    const/16 v30, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v23

    .line 175
    .local v23, "title":Ljava/lang/String;
    if-eqz v23, :cond_e

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_e

    sget v30, Lmobi/monaca/framework/psedo/R$string;->nc_null:I

    invoke-static/range {v30 .. v30}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_e

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_e
    new-instance v20, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v20, "spinnerContentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$1;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void

    .line 166
    .end local v20    # "spinnerContentParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v23    # "title":Ljava/lang/String;
    .end local v27    # "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    :catch_3
    move-exception v7

    .line 167
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    new-instance v30, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    sget v32, Lmobi/monaca/framework/psedo/R$string;->exception_spinner_titlecolor:I

    invoke-static/range {v32 .. v32}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;-><init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V

    throw v30
.end method


# virtual methods
.method public updateTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method
