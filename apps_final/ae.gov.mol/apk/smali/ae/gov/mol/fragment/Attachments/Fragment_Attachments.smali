.class public Lae/gov/mol/fragment/Attachments/Fragment_Attachments;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Attachments.java"

# interfaces
.implements Lae/gov/mol/interfaces/DialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;,
        Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;,
        Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;,
        Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;
    }
.end annotation


# static fields
.field private static final PIC_CROP:I = 0x2f59

.field private static final REQUEST_CODE:I = 0x1

.field private static final SELECT_PHOTO_2:I = 0x3e8

.field private static isPhotoRequired:Z


# instance fields
.field final EVENT_CAMERA_CAPTURE:I

.field final EVENT_CAMERA_CROP:I

.field Id:I

.field private attachmentid:Ljava/lang/String;

.field private attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private errorOccuredWhileSending:Z

.field height:I

.field i:I

.field private isActivityFinish:Z

.field protected isCalledOnce:Z

.field loadonce:Z

.field private mAttachmentButtonId:I

.field private mAttachmentData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/AttachmentVo;",
            ">;"
        }
    .end annotation
.end field

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mImageButtonCount:I

.field private mImageViewCount:I

.field mImageViewHome:Landroid/widget/ImageView;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mRemoveButtonCount:I

.field private mSelectedImage:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mServiceAttachmentListHandler:Lae/gov/xmlhandler/ServiceAttachmentListHandler;

.field mServiceAttachmentListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceAttachmentListVo;",
            ">;"
        }
    .end annotation
.end field

.field mServicePageUrl:Ljava/lang/String;

.field mStringWebContent:Ljava/lang/String;

.field private mSubmitButtonCount:I

.field mTags:Lae/gov/mol/helper/Tags;

.field private mTextView:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

.field private message:Ljava/lang/String;

.field private outputFileUri:Landroid/net/Uri;

.field private picUri:Landroid/net/Uri;

.field private servicecode:Ljava/lang/String;

.field private tranmbno:Ljava/lang/String;

.field private transactionID:Ljava/lang/String;

.field private userid:Ljava/lang/String;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->isPhotoRequired:Z

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    .line 83
    const/16 v0, 0x1771

    iput v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageViewCount:I

    .line 84
    const/16 v0, 0x1389

    iput v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageButtonCount:I

    .line 85
    const/16 v0, 0xfa1

    iput v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mRemoveButtonCount:I

    .line 92
    const/16 v0, 0x1b59

    iput v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mSubmitButtonCount:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->message:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->attachmentid:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->tranmbno:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->servicecode:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->userid:Ljava/lang/String;

    .line 114
    iput-boolean v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->isActivityFinish:Z

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mStringWebContent:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mServicePageUrl:Ljava/lang/String;

    .line 123
    iput v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->height:I

    .line 124
    iput v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->width:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->loadonce:Z

    .line 130
    iput-boolean v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->isCalledOnce:Z

    .line 132
    iput v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->i:I

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->EVENT_CAMERA_CAPTURE:I

    .line 137
    const/4 v0, 0x3

    iput v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->EVENT_CAMERA_CROP:I

    .line 359
    const/16 v0, 0x3ea

    iput v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->Id:I

    .line 843
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->transactionID:Ljava/lang/String;

    .line 844
    iput-boolean v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->errorOccuredWhileSending:Z

    .line 78
    return-void
.end method

.method private SaveImageWithoutScaling(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 10
    .param p1, "finalBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 753
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 754
    .local v7, "root":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/MOL_Attachments"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .local v4, "myDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 756
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 757
    .local v3, "generator":Ljava/util/Random;
    const/16 v5, 0x2710

    .line 758
    .local v5, "n":I
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 759
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Image-"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "fname":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 761
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 762
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 765
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 766
    .local v6, "out":Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x3c

    invoke-virtual {p1, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 767
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 768
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private SetUpSubmitButton()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1083
    const v2, 0x7f09016b

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->CreateButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 1084
    .local v0, "mButton":Landroid/widget/Button;
    iget v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mSubmitButtonCount:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    .line 1085
    new-instance v2, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 1101
    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1100
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1102
    .local v1, "mParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1104
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    return-void
.end method

.method private ValidateAttachments()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1110
    iget-object v3, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1120
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1110
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;

    .line 1112
    .local v0, "attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;
    iget-boolean v4, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->isRequired:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->isSelected:Z

    if-nez v4, :cond_0

    .line 1114
    const v3, 0x7f090251

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "mStringTitle":Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 1116
    const v4, 0x7f090258

    invoke-virtual {p0, v4}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1115
    invoke-static {v3, v1, v4, v2}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Z)V
    .locals 0

    .prologue
    .line 844
    iput-boolean p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->errorOccuredWhileSending:Z

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->userid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V
    .locals 0

    .prologue
    .line 1081
    invoke-direct {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->SetUpSubmitButton()V

    return-void
.end method

.method static synthetic access$12(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->dismissDialog()V

    return-void
.end method

.method static synthetic access$13(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;I)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->openImageIntent(I)V

    return-void
.end method

.method static synthetic access$14(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Z
    .locals 1

    .prologue
    .line 1108
    invoke-direct {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->ValidateAttachments()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mSelectedImage:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->tranmbno:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getBase64String(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->servicecode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Lae/gov/mol/helper/PostParseGet;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    return-object v0
.end method

.method static synthetic access$8(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->errorOccuredWhileSending:Z

    return v0
.end method

.method static synthetic access$9(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->message:Ljava/lang/String;

    return-object v0
.end method

.method private decodeUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "selectedImage"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x1f4

    .line 814
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 815
    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 817
    iget-object v6, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v6}, Lae/gov/mol/helper/CustomFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 816
    invoke-static {v6, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 820
    const/16 v0, 0x1f4

    .line 823
    .local v0, "REQUIRED_SIZE":I
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v5, "width_tmp":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 824
    .local v1, "height_tmp":I
    const/4 v4, 0x1

    .line 826
    .local v4, "scale":I
    :goto_0
    div-int/lit8 v6, v5, 0x2

    if-lt v6, v7, :cond_0

    div-int/lit8 v6, v1, 0x2

    if-ge v6, v7, :cond_1

    .line 835
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 836
    .local v3, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 839
    iget-object v6, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v6}, Lae/gov/mol/helper/CustomFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 838
    invoke-static {v6, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 829
    .end local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 830
    div-int/lit8 v1, v1, 0x2

    .line 831
    mul-int/lit8 v4, v4, 0x2

    .line 825
    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 224
    :cond_0
    return-void
.end method

.method private getBase64String(I)Ljava/lang/String;
    .locals 6
    .param p1, "attachmentImageId"    # I

    .prologue
    .line 1010
    iget-object v4, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 1011
    iget-object v4, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1012
    iget v5, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    add-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1011
    check-cast v3, Landroid/widget/ImageView;

    .line 1016
    .local v3, "mImageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 1017
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1019
    .local v2, "image":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1020
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x14

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1022
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1025
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .line 1024
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 1029
    .end local v0    # "byteArray":[B
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "image":Landroid/graphics/Bitmap;
    .end local v3    # "mImageView":Landroid/widget/ImageView;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private launchCameraIntent()V
    .locals 17

    .prologue
    .line 308
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v13, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v3, "captureIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 311
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    invoke-virtual {v9, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 312
    .local v8, "listCam":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_0

    .line 328
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v6, "galleryIntent":Landroid/content/Intent;
    const-string v13, "image/*"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v13, "android.intent.action.PICK"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 336
    const-string v13, "Select Source"

    invoke-static {v6, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 339
    .local v4, "chooserIntent":Landroid/content/Intent;
    const-string v14, "android.intent.extra.INITIAL_INTENTS"

    const/4 v13, 0x0

    new-array v13, v13, [Landroid/os/Parcelable;

    invoke-interface {v2, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/os/Parcelable;

    invoke-virtual {v4, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    .end local v2    # "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v3    # "captureIntent":Landroid/content/Intent;
    .end local v4    # "chooserIntent":Landroid/content/Intent;
    .end local v6    # "galleryIntent":Landroid/content/Intent;
    .end local v8    # "listCam":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 312
    .restart local v2    # "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v3    # "captureIntent":Landroid/content/Intent;
    .restart local v8    # "listCam":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 313
    .local v11, "res":Landroid/content/pm/ResolveInfo;
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 314
    .local v10, "packageName":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 315
    .local v7, "intent":Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 316
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    .end local v2    # "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v3    # "captureIntent":Landroid/content/Intent;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "listCam":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "res":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 347
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    const v13, 0x7f090260

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "errorMessage":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 351
    .local v12, "toast":Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private openImageIntent(I)V
    .locals 7
    .param p1, "mId"    # I

    .prologue
    .line 236
    iput p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    .line 239
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 240
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MOL_Attachments"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v3, "root":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 244
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 245
    .local v1, "generator":Ljava/util/Random;
    const/16 v2, 0x2710

    .line 246
    .local v2, "n":I
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Image-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "fname":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v4, "sdImageMainDirectory":Ljava/io/File;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->outputFileUri:Landroid/net/Uri;

    .line 299
    invoke-direct {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->launchCameraIntent()V

    .line 300
    return-void
.end method

.method private performCrop(Landroid/net/Uri;)V
    .locals 7
    .param p1, "picUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 702
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.CROP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v1, "cropIntent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const-string v4, "aspectX"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    const-string v4, "aspectY"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const-string v4, "outputX"

    const/16 v5, 0x100

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    const-string v4, "outputY"

    const/16 v5, 0x100

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    const-string v4, "return-data"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    .end local v1    # "cropIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 720
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v2, "Whoops - your device doesn\'t support the crop action!"

    .line 721
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 722
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public CreateButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 362
    iget v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->Id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->Id:I

    .line 363
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, "mButton":Landroid/widget/Button;
    iget v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->Id:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 365
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 366
    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 367
    invoke-virtual {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 368
    return-object v0
.end method

.method public GetImageUri(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .param p1, "finalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "initialName"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 728
    .local v7, "root":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/MOL_Attachments/temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 729
    .local v4, "myDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 730
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 731
    .local v3, "generator":Ljava/util/Random;
    const/16 v5, 0x2710

    .line 732
    .local v5, "n":I
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 733
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "Image-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "fname":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 736
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 737
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 740
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 741
    .local v6, "out":Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 742
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 743
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public RemoveImage(I)V
    .locals 4
    .param p1, "mId"    # I

    .prologue
    .line 402
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;

    .line 404
    .local v0, "attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;
    iget v3, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->removeButtonID:I

    if-ne v3, p1, :cond_0

    .line 406
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v3, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->imageViewID:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 407
    .local v1, "mImageView":Landroid/widget/ImageView;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->isSelected:Z

    .line 410
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 411
    const v2, 0x7f0200e4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected SetUpAttachmentButtons()V
    .locals 14

    .prologue
    .line 440
    const/4 v9, 0x1

    sput-boolean v9, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->isPhotoRequired:Z

    .line 446
    iget-object v9, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mServiceAttachmentListVos:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 552
    :cond_0
    return-void

    .line 448
    :cond_1
    const-string v1, ""

    .line 449
    .local v1, "buttonDescription":Ljava/lang/String;
    iget-object v9, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mServiceAttachmentListVos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lae/gov/mol/vo/ServiceAttachmentListVo;

    .line 470
    .local v8, "sAttachment":Lae/gov/mol/vo/ServiceAttachmentListVo;
    const/4 v6, 0x1

    .local v6, "pageNumber":I
    :goto_0
    invoke-virtual {v8}, Lae/gov/mol/vo/ServiceAttachmentListVo;->getMaximumPages()I

    move-result v10

    if-gt v6, v10, :cond_2

    .line 472
    new-instance v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;

    const/4 v10, 0x0

    invoke-direct {v0, p0, v10}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;)V

    .line 473
    .local v0, "attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;
    iput v6, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->pageNumber:I

    .line 474
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 475
    .local v4, "mLinearLayoutChild":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 477
    new-instance v3, Landroid/widget/ImageView;

    iget-object v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v3, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 478
    .local v3, "mImageView":Landroid/widget/ImageView;
    iget v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageViewCount:I

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 479
    iget v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageViewCount:I

    iput v10, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->imageViewID:I

    .line 480
    iget v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageViewCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageViewCount:I

    .line 481
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x96

    const/16 v12, 0x96

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    const v10, 0x7f0200e4

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 484
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    invoke-virtual {v8}, Lae/gov/mol/vo/ServiceAttachmentListVo;->getScanDescription()Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-virtual {v8}, Lae/gov/mol/vo/ServiceAttachmentListVo;->getMaximumPages()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 489
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    :cond_3
    invoke-virtual {v8}, Lae/gov/mol/vo/ServiceAttachmentListVo;->getMinimumPages()I

    move-result v10

    if-gt v6, v10, :cond_4

    invoke-virtual {v8}, Lae/gov/mol/vo/ServiceAttachmentListVo;->IsMandatory()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 494
    const/4 v10, 0x1

    iput-boolean v10, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->isRequired:Z

    .line 495
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090252

    invoke-virtual {p0, v11}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    :goto_1
    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->CreateButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 503
    .local v2, "mButton":Landroid/widget/Button;
    iget v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageButtonCount:I

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setId(I)V

    .line 504
    iget v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageButtonCount:I

    iput v10, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->addButtonID:I

    .line 505
    iget v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageButtonCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageButtonCount:I

    .line 506
    new-instance v10, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$2;

    invoke-direct {v10, p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$2;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    .line 515
    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    .line 514
    invoke-direct {v5, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 516
    .local v5, "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 517
    const/16 v10, 0x10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 518
    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    const v10, 0x7f090254

    invoke-virtual {p0, v10}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->CreateButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    .line 522
    .local v7, "removeButton":Landroid/widget/Button;
    iget v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mRemoveButtonCount:I

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setId(I)V

    .line 523
    iget v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mRemoveButtonCount:I

    iput v10, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->removeButtonID:I

    .line 524
    iget v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mRemoveButtonCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mRemoveButtonCount:I

    .line 525
    new-instance v10, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$3;

    invoke-direct {v10, p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$3;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    invoke-virtual {v8}, Lae/gov/mol/vo/ServiceAttachmentListVo;->getScanType()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->type:Ljava/lang/String;

    .line 534
    iget-object v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x1

    .line 537
    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    .line 536
    invoke-direct {v5, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 538
    .restart local v5    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 540
    const/16 v10, 0x10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 541
    invoke-virtual {v4, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x1

    .line 545
    const/4 v11, -0x2

    .line 544
    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 546
    .restart local v5    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x8

    const/16 v11, 0x8

    const/16 v12, 0x8

    const/16 v13, 0x8

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 547
    iget-object v10, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 499
    .end local v2    # "mButton":Landroid/widget/Button;
    .end local v5    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "removeButton":Landroid/widget/Button;
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->isRequired:Z

    .line 500
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090253

    invoke-virtual {p0, v11}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public cancel(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1346
    return-void
.end method

.method protected getAttachmentString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/AttachmentVo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p1, "mAttachmentData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AttachmentVo;>;"
    const-string v2, ""

    .line 1057
    .local v2, "mJson":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1058
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1064
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1072
    :cond_1
    :goto_1
    return-object v2

    .line 1058
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/AttachmentVo;

    .line 1059
    .local v1, "mItem":Lae/gov/mol/vo/AttachmentVo;
    if-eqz v1, :cond_0

    .line 1060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lae/gov/mol/vo/AttachmentVo;->getErrResult()Lae/gov/mol/vo/AttachmentVo$Attachment;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/AttachmentVo$Attachment;->getAttachmentID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1065
    .end local v1    # "mItem":Lae/gov/mol/vo/AttachmentVo;
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, ""

    goto :goto_1

    .line 1067
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1068
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, ""

    goto :goto_1
.end method

.method public getReplacedXmlData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mData"    # Ljava/lang/String;

    .prologue
    .line 1038
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1039
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1040
    const-string v0, "&amp;"

    const-string v1, "and"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1041
    const-string v0, "&"

    const-string v1, "and"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1042
    const-string v0, "\r\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1043
    const-string v0, "> <"

    const-string v1, "><"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1044
    const-string v0, ">  <"

    const-string v1, "><"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1045
    const-string v0, ">    <"

    const-string v1, "><"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1046
    return-object p1
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mAlternateText"    # Ljava/lang/String;

    .prologue
    .line 1158
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1161
    .end local p1    # "mAlternateText":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public okay(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1331
    if-eqz p1, :cond_0

    .line 1332
    const-string v2, "DATA"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1333
    .local v1, "paymentUrl":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1334
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1335
    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->startActivity(Landroid/content/Intent;)V

    .line 1337
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v2}, Lae/gov/mol/helper/CustomFragmentActivity;->finish()V

    .line 1340
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "paymentUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 564
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 565
    if-eqz p1, :cond_0

    const-string v0, "cameraImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const-string v0, "cameraImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->outputFileUri:Landroid/net/Uri;

    .line 568
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 576
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 580
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1}, Lae/gov/mol/helper/CustomFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 583
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const-string v1, "_data"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 586
    .local v8, "column_index":I
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 587
    .local v12, "filePathUri":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 588
    .local v13, "file_path":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 589
    invoke-static {v13}, Lae/gov/mol/helper/CommonMethods;->getImageSizeInKB(Ljava/lang/String;)J

    move-result-wide v14

    .line 591
    .local v14, "kb":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mSelectedImage:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v4, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    add-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 595
    .local v16, "mImageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v13, v1}, Lae/gov/mol/helper/CommonMethods;->getImageBitmapFromUri(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "column_index":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "filePathUri":Landroid/net/Uri;
    .end local v13    # "file_path":Ljava/lang/String;
    .end local v14    # "kb":J
    .end local v16    # "mImageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lae/gov/mol/helper/CustomFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 694
    return-void

    .line 618
    :cond_1
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    .line 623
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 625
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 634
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->performCrop(Landroid/net/Uri;)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;

    .line 626
    .local v7, "attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;
    iget v3, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->addButtonID:I

    move-object/from16 v0, p0

    iget v4, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    if-ne v3, v4, :cond_2

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->path:Ljava/lang/String;

    .line 628
    const/4 v3, 0x1

    iput-boolean v3, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->isSelected:Z

    goto :goto_1

    .line 639
    .end local v7    # "attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;
    :cond_5
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 642
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 652
    .local v9, "croppedImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mSelectedImage:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v4, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 654
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 655
    move-object/from16 v0, p0

    iget v3, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    add-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 654
    check-cast v16, Landroid/widget/ImageView;

    .line 656
    .restart local v16    # "mImageView":Landroid/widget/ImageView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 663
    .end local v9    # "croppedImage":Landroid/graphics/Bitmap;
    .end local v16    # "mImageView":Landroid/widget/ImageView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    const/16 v17, 0x0

    .line 666
    .local v17, "scaledImage":Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->picUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->decodeUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 669
    move-object/from16 v0, p0

    iget v3, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    add-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 668
    check-cast v16, Landroid/widget/ImageView;

    .line 670
    .restart local v16    # "mImageView":Landroid/widget/ImageView;
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 673
    .end local v16    # "mImageView":Landroid/widget/ImageView;
    :catch_0
    move-exception v11

    .line 675
    .local v11, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->attachments:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 149
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 150
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 151
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mTags:Lae/gov/mol/helper/Tags;

    .line 152
    invoke-virtual {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mBundle:Landroid/os/Bundle;

    .line 155
    invoke-virtual {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 157
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mSelectedImage:Ljava/util/LinkedHashMap;

    .line 159
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v0}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->finish()V

    .line 164
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 169
    const v2, 0x7f03002f

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, "mView":Landroid/view/View;
    invoke-virtual {p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->message:Ljava/lang/String;

    .line 173
    const-string v2, "attachmentid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->attachmentid:Ljava/lang/String;

    .line 174
    const-string v2, "Tranmbno"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->tranmbno:Ljava/lang/String;

    .line 175
    const-string v2, "servicecode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->servicecode:Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->userid:Ljava/lang/String;

    .line 178
    const v2, 0x7f060758

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090251

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v2, 0x7f060079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 182
    const v2, 0x7f060757

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageViewHome:Landroid/widget/ImageView;

    .line 184
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$1;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-boolean v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->loadonce:Z

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v2}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    :cond_0
    iput-boolean v4, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->loadonce:Z

    .line 214
    :cond_1
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 556
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 557
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->outputFileUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "cameraImageUri"

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->outputFileUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_0
    return-void
.end method

.method public pickImage(I)V
    .locals 2
    .param p1, "mId"    # I

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iput p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mAttachmentButtonId:I

    .line 392
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->startActivityForResult(Landroid/content/Intent;I)V

    .line 393
    return-void
.end method
