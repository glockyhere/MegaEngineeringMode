.class public Lcom/mega/app/engineeringmode/common/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public extension:Ljava/lang/Object;

.field public relative:Z

.field public time:J

.field public valid:Z

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    .local p0, "this":Lcom/mega/app/engineeringmode/common/Payload;, "Lcom/mega/app/engineeringmode/common/Payload<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/app/engineeringmode/common/Payload;->relative:Z

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/app/engineeringmode/common/Payload;->valid:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/mega/app/engineeringmode/common/Payload;, "Lcom/mega/app/engineeringmode/common/Payload<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/app/engineeringmode/common/Payload;->relative:Z

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/app/engineeringmode/common/Payload;->valid:Z

    .line 17
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/Payload;->value:Ljava/lang/Object;

    .line 18
    return-void
.end method
