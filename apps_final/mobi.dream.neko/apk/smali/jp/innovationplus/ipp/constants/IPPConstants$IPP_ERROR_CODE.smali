.class public Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;
.super Ljava/lang/Object;
.source "IPPConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/innovationplus/ipp/constants/IPPConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IPP_ERROR_CODE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE$IPP_KIT_ERROR;,
        Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE$PLATFORM_SERVER_ERROR;
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljp/innovationplus/ipp/constants/IPPConstants;


# direct methods
.method public constructor <init>(Ljp/innovationplus/ipp/constants/IPPConstants;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;->this$0:Ljp/innovationplus/ipp/constants/IPPConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
