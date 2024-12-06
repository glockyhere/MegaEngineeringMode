.class public Lcom/mega/nexus/service/voice/MegaVoiceInteractionService;
.super Ljava/lang/Object;
.source "MegaVoiceInteractionService.java"


# static fields
.field public static EXTRA_DISPLAY_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-object v0, Lcom/mega/nexus/service/voice/MegaVoiceInteractionServiceAdapter;->EXTRA_DISPLAY_ID:Ljava/lang/String;

    sput-object v0, Lcom/mega/nexus/service/voice/MegaVoiceInteractionService;->EXTRA_DISPLAY_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
