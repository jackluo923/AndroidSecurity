.class public Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE$IPP_KIT_ERROR;
.super Ljava/lang/Object;
.source "IPPConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IPP_KIT_ERROR"
.end annotation


# static fields
.field public static final FAILURE_IO_STREAM:I = -0x3ef

.field public static final FAILURE_JSON_GENERATION:I = -0x3ec

.field public static final FAILURE_OPEN_CONNECTION:I = -0x3e9

.field public static final FAILURE_OPEN_JSON_DATA:I = -0x3ee

.field public static final INVALID_JSON_MAPPING:I = -0x3ed

.field public static final INVALID_PROTOCOL:I = -0x3ea

.field public static final MALFORMED_URL:I = -0x3e8

.field public static final UNSET_APPLICATION_KEY:I = -0x3eb


# instance fields
.field final synthetic this$1:Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;


# direct methods
.method public constructor <init>(Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE$IPP_KIT_ERROR;->this$1:Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
