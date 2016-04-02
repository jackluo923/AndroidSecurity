.class Lmobi/monaca/framework/plugin/ChildBrowser$1;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/plugin/ChildBrowser;->showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/plugin/ChildBrowser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iput-object p2, p0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dpToPixels(I)I
    .locals 4
    .param p1, "dipValue"    # I

    .prologue
    .line 227
    const/4 v1, 0x1

    int-to-float v2, p1

    iget-object v3, p0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iget-object v3, v3, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 232
    .local v0, "value":I
    return v0
.end method

.method private loadDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iget-object v1, v1, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 388
    .local v0, "input":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    new-instance v16, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x1030006

    invoke-direct/range {v16 .. v18}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static/range {v15 .. v16}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$002(Lmobi/monaca/framework/plugin/ChildBrowser;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$000(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    const v16, 0x1030002

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$000(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$000(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$000(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v15

    new-instance v16, Lmobi/monaca/framework/plugin/ChildBrowser$1$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmobi/monaca/framework/plugin/ChildBrowser$1$1;-><init>(Lmobi/monaca/framework/plugin/ChildBrowser$1;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 255
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iget-object v15, v15, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v15}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v11, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 256
    .local v11, "main":Landroid/widget/LinearLayout;
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 259
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iget-object v15, v15, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v15}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 260
    .local v14, "toolbar":Landroid/widget/RelativeLayout;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lmobi/monaca/framework/plugin/ChildBrowser$1;->dpToPixels(I)I

    move-result v17

    invoke-direct/range {v15 .. v17}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lmobi/monaca/framework/plugin/ChildBrowser$1;->dpToPixels(I)I

    move-result v15

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lmobi/monaca/framework/plugin/ChildBrowser$1;->dpToPixels(I)I

    move-result v16

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lmobi/monaca/framework/plugin/ChildBrowser$1;->dpToPixels(I)I

    move-result v17

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lmobi/monaca/framework/plugin/ChildBrowser$1;->dpToPixels(I)I

    move-result v18

    invoke-virtual/range {v14 .. v18}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 262
    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 263
    const/16 v15, 0x30

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 266
    new-instance v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iget-object v15, v15, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v15}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v2, v15}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 267
    .local v2, "actionButtonContainer":Landroid/widget/RelativeLayout;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 269
    const/16 v15, 0x10

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 270
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 273
    new-instance v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iget-object v15, v15, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v15}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v3, v15}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 274
    .local v3, "back":Landroid/widget/ImageButton;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v4, "backLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x5

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 276
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    const-string v15, "Back Button"

    invoke-virtual {v3, v15}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 278
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Landroid/widget/ImageButton;->setId(I)V

    .line 279
    sget v15, Lmobi/monaca/framework/psedo/R$drawable;->childbroswer_icon_arrow_left:I

    invoke-virtual {v3, v15}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 280
    new-instance v15, Lmobi/monaca/framework/plugin/ChildBrowser$1$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobi/monaca/framework/plugin/ChildBrowser$1$2;-><init>(Lmobi/monaca/framework/plugin/ChildBrowser$1;)V

    invoke-virtual {v3, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    new-instance v8, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iget-object v15, v15, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v15}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 288
    .local v8, "forward":Landroid/widget/ImageButton;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    .local v9, "forwardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 290
    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    const-string v15, "Forward Button"

    invoke-virtual {v8, v15}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 292
    const/4 v15, 0x3

    invoke-virtual {v8, v15}, Landroid/widget/ImageButton;->setId(I)V

    .line 293
    sget v15, Lmobi/monaca/framework/psedo/R$drawable;->childbroswer_icon_arrow_right:I

    invoke-virtual {v8, v15}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 294
    new-instance v15, Lmobi/monaca/framework/plugin/ChildBrowser$1$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobi/monaca/framework/plugin/ChildBrowser$1$3;-><init>(Lmobi/monaca/framework/plugin/ChildBrowser$1;)V

    invoke-virtual {v8, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    new-instance v16, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    # setter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v15 .. v16}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$502(Lmobi/monaca/framework/plugin/ChildBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 302
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v13, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 303
    .local v13, "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 304
    const/4 v15, 0x0

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setId(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->val$url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    new-instance v16, Lmobi/monaca/framework/plugin/ChildBrowser$1$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmobi/monaca/framework/plugin/ChildBrowser$1$4;-><init>(Lmobi/monaca/framework/plugin/ChildBrowser$1;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 324
    new-instance v6, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iget-object v15, v15, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v15}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v6, v15}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 325
    .local v6, "close":Landroid/widget/ImageButton;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v7, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 326
    .local v7, "closeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xb

    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 327
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    const-string v15, "Close Button"

    invoke-virtual {v8, v15}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 329
    const/4 v15, 0x5

    invoke-virtual {v6, v15}, Landroid/widget/ImageButton;->setId(I)V

    .line 330
    sget v15, Lmobi/monaca/framework/psedo/R$drawable;->childbroswer_icon_close:I

    invoke-virtual {v6, v15}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 331
    new-instance v15, Lmobi/monaca/framework/plugin/ChildBrowser$1$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobi/monaca/framework/plugin/ChildBrowser$1$5;-><init>(Lmobi/monaca/framework/plugin/ChildBrowser$1;)V

    invoke-virtual {v6, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    new-instance v16, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    # setter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static/range {v15 .. v16}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$802(Lmobi/monaca/framework/plugin/ChildBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    new-instance v16, Landroid/webkit/WebChromeClient;

    invoke-direct/range {v16 .. v16}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 341
    new-instance v5, Lmobi/monaca/framework/plugin/ChildBrowser$ChildBrowserClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    move-object/from16 v16, v0

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v16 .. v16}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v15, v0}, Lmobi/monaca/framework/plugin/ChildBrowser$ChildBrowserClient;-><init>(Lmobi/monaca/framework/plugin/ChildBrowser;Landroid/widget/EditText;)V

    .line 342
    .local v5, "client":Landroid/webkit/WebViewClient;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    .line 344
    .local v12, "settings":Landroid/webkit/WebSettings;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 345
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 346
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 348
    sget-object v15, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v12, v15}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 349
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 350
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->val$url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebView;->setId(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 353
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/webkit/WebView;->requestFocus()Z

    .line 355
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 358
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 359
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 362
    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 364
    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # invokes: Lmobi/monaca/framework/plugin/ChildBrowser;->getShowLocationBar()Z
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$900(Lmobi/monaca/framework/plugin/ChildBrowser;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 369
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v10}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 376
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$000(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 377
    const/4 v15, -0x1

    iput v15, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 378
    const/4 v15, -0x1

    iput v15, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 380
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$000(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$000(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Dialog;->show()V

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v15}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$000(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 383
    return-void
.end method
