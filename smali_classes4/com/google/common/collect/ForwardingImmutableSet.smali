.class abstract Lcom/google/common/collect/ForwardingImmutableSet;
.super Ljava/lang/Object;
.source "ForwardingImmutableSet.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lcom/google/common/collect/ForwardingImmutableSet;, "Lcom/google/common/collect/ForwardingImmutableSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
