.class public Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity$DisVersionInfo;
.super Ljava/lang/Object;
.source "LcdInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/lcd/LcdInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisVersionInfo"
.end annotation


# instance fields
.field public ecu_boot_version:Ljava/lang/String;

.field public ecu_childid:I

.field public ecu_desc:Ljava/lang/String;

.field public ecu_hard_version:Ljava/lang/String;

.field public ecu_name:Ljava/lang/String;

.field public ecu_result:I

.field public ecu_slot_version:Ljava/lang/String;

.field public ecu_soft_version:Ljava/lang/String;

.field public ecu_vendor_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
