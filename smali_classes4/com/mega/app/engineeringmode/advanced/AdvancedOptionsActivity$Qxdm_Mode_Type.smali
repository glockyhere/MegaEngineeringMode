.class final enum Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;
.super Ljava/lang/Enum;
.source "AdvancedOptionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Qxdm_Mode_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

.field public static final enum CLEAR_ONDEVICE_LOG:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

.field public static final enum CLOSE_DEBUG:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

.field public static final enum ONDEVICE_RX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

.field public static final enum ONDEVICE_RX_TX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

.field public static final enum ONDEVICE_TX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

.field public static final enum QXDM_MODE_MAX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

.field public static final enum SOCKET_PORT:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 144
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    const-string v1, "ONDEVICE_RX_TX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_RX_TX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    .line 145
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    const-string v1, "ONDEVICE_RX"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_RX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    .line 146
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    const-string v1, "ONDEVICE_TX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_TX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    .line 147
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    const-string v1, "SOCKET_PORT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->SOCKET_PORT:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    .line 148
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    const-string v1, "CLOSE_DEBUG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->CLOSE_DEBUG:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    .line 149
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    const-string v1, "CLEAR_ONDEVICE_LOG"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->CLEAR_ONDEVICE_LOG:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    .line 150
    new-instance v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    const-string v1, "QXDM_MODE_MAX"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->QXDM_MODE_MAX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    .line 143
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    sget-object v9, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_RX_TX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    aput-object v9, v1, v2

    sget-object v2, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_RX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->ONDEVICE_TX:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->SOCKET_PORT:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->CLOSE_DEBUG:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->CLEAR_ONDEVICE_LOG:Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->$VALUES:[Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 143
    const-class v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    return-object v0
.end method

.method public static values()[Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;
    .locals 1

    .line 143
    sget-object v0, Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->$VALUES:[Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    invoke-virtual {v0}, [Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mega/app/engineeringmode/advanced/AdvancedOptionsActivity$Qxdm_Mode_Type;

    return-object v0
.end method
