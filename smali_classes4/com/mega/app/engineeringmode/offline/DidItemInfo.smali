.class public Lcom/mega/app/engineeringmode/offline/DidItemInfo;
.super Ljava/lang/Object;
.source "DidItemInfo.java"


# instance fields
.field private didKey:Ljava/lang/String;

.field private didName:Ljava/lang/String;

.field private setMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDidKey()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->didKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDidName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->didName:Ljava/lang/String;

    return-object v0
.end method

.method public getSetMethod()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->setMethod:Ljava/lang/String;

    return-object v0
.end method

.method public setDidKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "didKey"    # Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->didKey:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setDidName(Ljava/lang/String;)V
    .locals 0
    .param p1, "didName"    # Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->didName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public setSetMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "setMethod"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->setMethod:Ljava/lang/String;

    .line 18
    return-void
.end method
