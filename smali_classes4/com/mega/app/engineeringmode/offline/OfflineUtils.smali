.class public Lcom/mega/app/engineeringmode/offline/OfflineUtils;
.super Ljava/lang/Object;
.source "OfflineUtils.java"


# static fields
.field public static final COMMAND_CLEAR:Ljava/lang/String; = "1"

.field public static final COMMAND_WRITE:Ljava/lang/String; = "0"

.field public static final FILE_EXTENSION_NAME:Ljava/lang/String; = ".txt"

.field public static final ID:Ljava/lang/String; = "did_set"

.field public static final INVALID_DID:I = 0xff

.field public static final MISC_REQ:Ljava/lang/String; = "misc_service/command/did_request"

.field public static final MISC_RES:Ljava/lang/String; = "misc_service/command/did_response"

.field public static final OPERATION:Ljava/lang/String; = "set"

.field public static final PARAMETER:Ljava/lang/String; = "-w /etc/ecu_conf/"

.field public static final TAG:Ljava/lang/String;

.field public static final VEHICLE_CONFIG1:I = 0x330ffffd

.field public static final VEHICLE_CONFIG2:I = 0x330ffffe

.field public static final VEHICLE_TYPE:I = 0x33100000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-class v0, Lcom/mega/app/engineeringmode/offline/OfflineUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/offline/OfflineUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
