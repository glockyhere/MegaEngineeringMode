.class Lcom/google/common/util/concurrent/Striped$PaddedSemaphore;
.super Ljava/util/concurrent/Semaphore;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddedSemaphore"
.end annotation


# instance fields
.field unused1:J

.field unused2:J

.field unused3:J


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "permits"    # I

    .line 587
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 588
    return-void
.end method
