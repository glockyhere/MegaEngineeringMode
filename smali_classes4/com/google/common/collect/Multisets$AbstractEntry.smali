.class abstract Lcom/google/common/collect/Multisets$AbstractEntry;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/collect/Multiset$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 807
    .local p0, "this":Lcom/google/common/collect/Multisets$AbstractEntry;, "Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 814
    .local p0, "this":Lcom/google/common/collect/Multisets$AbstractEntry;, "Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 815
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 816
    .local v0, "that":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 816
    :goto_0
    return v1

    .line 819
    .end local v0    # "that":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 828
    .local p0, "this":Lcom/google/common/collect/Multisets$AbstractEntry;, "Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 829
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 840
    .local p0, "this":Lcom/google/common/collect/Multisets$AbstractEntry;, "Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v1

    .line 842
    .local v1, "n":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method
