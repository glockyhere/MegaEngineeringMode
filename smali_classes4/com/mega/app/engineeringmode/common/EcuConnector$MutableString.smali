.class Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;
.super Ljava/lang/Object;
.source "EcuConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/app/engineeringmode/common/EcuConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MutableString"
.end annotation


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;->value:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/app/engineeringmode/common/EcuConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/app/engineeringmode/common/EcuConnector$1;

    .line 48
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;-><init>()V

    return-void
.end method
