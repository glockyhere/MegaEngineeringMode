.class public final Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/common/Constants$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateJson"
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private operation:Ljava/lang/String;

.field private parameter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->parameter:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->command:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->id:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->operation:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameter"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->parameter:Ljava/lang/String;

    .line 58
    return-void
.end method
