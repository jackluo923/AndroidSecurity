.class public Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;
.super Ljava/lang/Object;
.source "FragmentNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/AboutUs/FragmentNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mImageViewNewsImage:Landroid/widget/ImageView;

.field mTextViewNewsDesc:Landroid/widget/TextView;

.field mTextViewNewsHeading:Landroid/widget/TextView;

.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
