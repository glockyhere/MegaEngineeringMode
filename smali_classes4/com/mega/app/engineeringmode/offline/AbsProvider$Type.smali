.class public final enum Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;
.super Ljava/lang/Enum;
.source "AbsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/offline/AbsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

.field public static final enum BIGSUR:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

.field public static final enum MONZA:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

.field public static final enum SEPANG:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

.field public static final enum SOLVANG:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    const-string v1, "BIGSUR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->BIGSUR:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    .line 20
    new-instance v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    const-string v1, "MONZA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->MONZA:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    .line 21
    new-instance v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    const-string v1, "SOLVANG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->SOLVANG:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    .line 22
    new-instance v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    const-string v1, "SEPANG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->SEPANG:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    .line 18
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    sget-object v6, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->BIGSUR:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    aput-object v6, v1, v2

    sget-object v2, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->MONZA:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->SOLVANG:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->$VALUES:[Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    return-object v0
.end method

.method public static values()[Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;
    .locals 1

    .line 18
    sget-object v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->$VALUES:[Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    invoke-virtual {v0}, [Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    return-object v0
.end method
