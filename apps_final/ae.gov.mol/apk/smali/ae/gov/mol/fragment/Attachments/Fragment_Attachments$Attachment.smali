.class Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;
.super Ljava/lang/Object;
.source "Fragment_Attachments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Attachments/Fragment_Attachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Attachment"
.end annotation


# instance fields
.field public addButtonID:I

.field public attachmentImage:Landroid/graphics/Bitmap;

.field public imageViewID:I

.field public isRequired:Z

.field public isSelected:Z

.field public pageNumber:I

.field public path:Ljava/lang/String;

.field public removeButtonID:I

.field final synthetic this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

.field public type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1136
    iput-object p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->path:Ljava/lang/String;

    .line 1139
    iput v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->imageViewID:I

    .line 1140
    iput v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->addButtonID:I

    .line 1141
    iput v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->removeButtonID:I

    .line 1142
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->type:Ljava/lang/String;

    .line 1143
    iput v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->pageNumber:I

    .line 1144
    iput-boolean v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->isRequired:Z

    .line 1145
    iput-boolean v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->isSelected:Z

    .line 1149
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->attachmentImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;)V
    .locals 0

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    return-void
.end method
