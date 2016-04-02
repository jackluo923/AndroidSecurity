.class public Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE$PLATFORM_SERVER_ERROR;
.super Ljava/lang/Object;
.source "IPPConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PLATFORM_SERVER_ERROR"
.end annotation


# static fields
.field public static final INTERNAL_SERVER_ERROR:I = -0x64

.field public static final NG_BAD_REQUEST:I = -0x2716

.field public static final NG_PERMISSION_DENIED:I = -0x2714

.field public static final NG_RESOURCE_NOT_FOUND:I = -0x2710

.field public static final NG_UNAUTHORIZED:I = -0x2713

.field public static final NG_UNEXPECTED_ERROR:I = -0x2715


# instance fields
.field final synthetic this$1:Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;


# direct methods
.method public constructor <init>(Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE$PLATFORM_SERVER_ERROR;->this$1:Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
