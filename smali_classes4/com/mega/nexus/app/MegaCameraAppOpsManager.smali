.class public Lcom/mega/nexus/app/MegaCameraAppOpsManager;
.super Ljava/lang/Object;
.source "MegaCameraAppOpsManager.java"


# static fields
.field public static final MODE_CAMERA:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V
    .locals 0
    .param p1, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "mode"    # I

    .line 13
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 14
    return-void
.end method